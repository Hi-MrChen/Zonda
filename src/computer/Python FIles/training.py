import numpy as np
import pandas as pd
import torch
import torch.nn as nn
import time
import csv
from torchstat import stat

from torch.utils.data import DataLoader

from model import MLP2
from model import LPV

from datasets import f1tenth_Dataset

from torch.utils.tensorboard import SummaryWriter

writer16 = SummaryWriter('runs/Tiny/1/MSE/16')
writer32 = SummaryWriter('runs/Tiny/1/MSE/32')
writer64 = SummaryWriter('runs/Tiny/1/MSE/64')
writer128 = SummaryWriter('runs/Tiny/1/MSE/128')
writer_graph = SummaryWriter('runs/Tiny/1/MSE/graph')


def normalize(data, dir):

    max_value = data.max(axis=0)
    min_value = data.min(axis=0)
    for i in range(data.shape[0]):
        data[i] = (data[i] - min_value) / (max_value - min_value)

    df = pd.DataFrame(data, columns=["vx", "vy", "omega", "throttle", "steering", "dvx", "dvy", "dr"])
    df.to_csv("Data/" + dir + "data_norm.csv")

    return data


def denormalize(norm, dir):
    df = pd.read_csv("Data/" + dir + "normalize.csv")
    print(df.shape)
    max_value = df.iloc[0, :3]
    min_value = df.iloc[1, :3]
    norm = torch.detach(norm).numpy()
    denorm = np.dot(norm, max_value - min_value) + min_value
    return denorm


def train_loop(dataloader, model, loss_fn, optimizer, epoch, writer):
    size = len(dataloader.dataset)
    print("training data size:", size)
    for batch, (cut_x, cut_y) in enumerate(dataloader):

        # print(f"cut_x: {cut_x.shape}")
        # print(f"cut_y: {cut_y.shape}")

        cut_x = cut_x.float()
        cut_y = cut_y.float()

        y_pred = model(cut_x)

        loss = loss_fn(y_pred, cut_y)
        for i in range(1, y_pred.shape[1]):
            loss += loss_fn(y_pred[:, i], cut_y[:, i])

        # Backpropagation
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        if batch % 100 == 0:
            loss, current = loss.item(), batch
            print(f"loss: {loss:>7f}  [{current:>5d}/{size:>5d}]")

        writer.add_scalar(f"Loss/train/{epoch}", loss, batch)


def valid_loop(dataloader, model, loss_fn, epoch, writer):
    size = len(dataloader.dataset)
    print("valid data size:", size)
    num_batches = len(dataloader)
    valid_loss, valid_error = 0, 0

    with torch.no_grad():
        for cut_x, cut_y in dataloader:

            cut_x = cut_x.float()
            cut_y = cut_y.float()

            y_pred = model(cut_x)

            for i in range(0, y_pred.shape[1]):
                loss = loss_fn(y_pred[:, i], cut_y[:, i])
                error = np.linalg.norm(y_pred[0, i] - cut_y[0, i])
                # error = np.linalg.norm(y_pred[0, i].cpu().numpy() - cut_y[0, i].cpu().numpy())
                valid_loss += loss.item()
                valid_error += error

    valid_loss /= num_batches
    valid_error /= num_batches

    writer.add_scalar(f"Loss/valid", valid_loss, epoch)
    writer.add_scalar(f"Error/valid", valid_error, epoch)

    print(f"Valid Error: \n Mn error {(100 * valid_error):>0.1f}%, Avg loss: {valid_loss:>8f} \n")
    return valid_loss, valid_error


# Press the green button in the gutter to run the script.
# Press the green button in the gutter to run the script.
if __name__ == '__main__':

    directory = 'TinyCar-3/'

    df = pd.read_csv("Data/" + directory + "data_true.csv")

    data = df.values[:, 1:]
    ta = data.astype("float")
    print("data type:", df.dtypes)
    data = normalize(data, directory)

    print(torch.cuda.is_available())

    N = data.shape[0]

    learning_rate = 0.5e-4
    batch_size = 8
    epochs = 100

    n_state = 5
    n_control = 5

    training_data = f1tenth_Dataset(data[:int(N*0.8)], steps=1, n_state=n_state, n_control=n_control)
    valid_data = f1tenth_Dataset(data[int(-N*0.2):int(-N*0.1)], steps=1, n_state=n_state, n_control=n_control)
    test_data = f1tenth_Dataset(data[int(-N*0.1):], steps=1, n_state=n_state, n_control=n_control)

    train_dataloader = DataLoader(training_data, batch_size=batch_size, shuffle=False)
    valid_dataloader = DataLoader(valid_data, batch_size=1, shuffle=False)
    test_dataloader = DataLoader(test_data, batch_size=1, shuffle=False)

    loss_fn = nn.MSELoss()
    # loss_fn = nn.L1Loss()

    for neurons in [128]:
        t1 = time.time()

        model = MLP2(neurons, steps=1, n_state=n_state, n_control=n_control)
        # model = MLP2(neurons).cuda()
        total = sum([param.nelement() for param in model.parameters()])
        print("MODEL Parameters:", total)

        # optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate, momentum=0.9)
        # optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)
        # min_loss = 1
        #
        # for t in range(epochs):
        #     print(f"Epoch {t + 1}\n-------------------------------")
        #     train_loop(train_dataloader, model, loss_fn, optimizer, t, writer32)
        #     valid_loss, valid_error = valid_loop(valid_dataloader, model, loss_fn, t, writer32)
        #     if valid_loss < min_loss:
        #         min_loss = valid_loss
        #
        # t2 = time.time()
        # print(f"Total time: {t2 - t1}")
        # print("Done!\n")
        #
        # writer_graph.add_scalar(f"Min loss", min_loss, neurons)
        # writer_graph.add_scalar(f"Training Time", t2-t1, neurons)
        #
        # torch.save(model.state_dict(), 'Model/Tiny1_weights-'+str(neurons)+'.pth')
        # torch.save(model, "Model/Tiny1-" + str(neurons) + ".pth")

        # torch.save(model.state_dict(), 'Model/model_weights.pth')
        # torch.save(model, "Model/model.pth")





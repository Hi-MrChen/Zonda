import time
import torch
import numpy as np
import pandas as pd
from torch.utils.data import DataLoader
from datasets import f1tenth_Dataset
from torch.utils.tensorboard import SummaryWriter
from torchstat import stat

from car_model import TinyCar_model_error
from car_model import FormulaCar_model_error5
from car_model import FormulaCar_model_error10


writer1 = SummaryWriter('eval/Tiny/ground truth')
writer2 = SummaryWriter('eval/Tiny/1')
writer3 = SummaryWriter('eval/Tiny/3')
writer4 = SummaryWriter('eval/Formula/physical model2')


def normalize(raw, dir):
    df = pd.read_csv("Data/" + dir + "normalize.csv")
    max_value = df.iloc[0]
    min_value = df.iloc[1]

    for i in range(data.shape[0]):
        raw[i] = (raw[i] - min_value) / (max_value - min_value)

    return raw


def denormalize(norm):
    df = pd.read_csv("Data/Formula-3/normalize.csv")
    data = df.values
    max_value = data[0, -3:]
    min_value = data[1, -3:]

    norm = norm.detach().numpy()
    denorm = norm[0] * (max_value - min_value) + min_value
    return denorm

# def model_error_predict(D, delta):
#     car_model = TinyCar_model_error
#     car_model.update(vx, vy, r, D, delta)


def test_loop(dataloader, model):
    with torch.no_grad():
        for batch, (cut_x, cut_y) in enumerate(dataloader):

            cut_x = cut_x.float()
            cut_y = cut_y.float()
            # print(f"cut_y{cut_y.shape}")

            t1 = time.time_ns()
            y_pred = model(cut_x)
            # print(f"y_pred{y_pred.shape}")

            y_true = denormalize(cut_y)
            y_pred_true = denormalize(y_pred)

            t2 = time.time_ns()
            print((t2 - t1)/1e+6)

            if 10 < batch < 511:
                # print(cut_x[0])
                writer1.add_scalar("dvx", cut_y[0, 0, 0], batch)
                writer2.add_scalar("dvx", y_pred[0, 0, 0], batch)
                writer1.add_scalar("dvy", cut_y[0, 0, 1], batch)
                writer2.add_scalar("dvy", y_pred[0, 0, 1], batch)
                writer1.add_scalar("dr", cut_y[0, 0, 2], batch)
                writer2.add_scalar("dr", y_pred[0, 0, 2], batch)

                writer1.add_scalar("dvx_true", y_true[0, 0], batch)
                writer2.add_scalar("dvx_true", y_pred_true[0, 0], batch)
                writer1.add_scalar("dvy_true", y_true[0, 1], batch)
                writer2.add_scalar("dvy_true", y_pred_true[0, 1], batch)
                writer1.add_scalar("dr_true", y_true[0, 2], batch)
                writer2.add_scalar("dr_true", y_pred_true[0, 2], batch)

            elif batch > 510:
                break


# Press the green button in the gutter to run the script.
# Press the green button in the gutter to run the script.
if __name__ == '__main__':

    directory = 'TInyCar-3/'
    df = pd.read_csv("Data/" + directory + "data_norm.csv")
    df1 = pd.read_csv("Data/" + directory + "data_true.csv")

    data = df.values[:, 1:]
    data1 = df1.values[:, 1:]
    N = data.shape[0]

    # data = normalize(data, directory)

    test_data = f1tenth_Dataset(data[int(-N * 0.1):], steps=1, n_control=1, n_state=1)
    test_dataloader = DataLoader(test_data, batch_size=1, shuffle=False)

    model = torch.load("Model/Formula-64.pth")

    test_loop(test_dataloader, model)

    data1 = data1[int(-N * 0.1):]

    vx1 = data1[101, 0]
    vy1 = data1[101, 1]
    r1 = data1[101, 2]

    vx2 = data1[101, 0]
    vy2 = data1[101, 1]
    r2 = data1[101, 2]

    car_model1 = FormulaCar_model_error5()
    car_model2 = FormulaCar_model_error10()

    for i in range(101, 154):

        D = data1[i, 3]
        delta = data1[i, 4]

        vx1, vy1, r1, dvx1, dvy1, dr1 = car_model1.update(vx=vx1, vy=vy1, r=r1, throttle=D, steering=delta)
        writer4.add_scalar("dvx_true", dvx1, i)
        writer4.add_scalar("dvy_true", dvy1, i)
        writer4.add_scalar("dr_true", dr1, i)

        vx2, vy2, r2, dvx2, dvy2, dr2 = car_model2.update(vx=vx2, vy=vy2, r=r2, throttle=D, steering=delta)
        writer4.add_scalar("dvx_true", dvx2, i)
        writer4.add_scalar("dvy_true", dvy2, i)
        writer4.add_scalar("dr_true", dr2, i)





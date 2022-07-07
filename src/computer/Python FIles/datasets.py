import torch
from torch.utils.data import Dataset


class f1tenth_Dataset(Dataset):
    def __init__(self, data, steps, n_state, n_control):
        self.data = data
        self.steps = steps
        self.n_state = n_state
        self.n_control = n_control
        self.transform = torch.tensor
        self.target_transform = torch.tensor

    def __len__(self):
        return self.data.shape[0] - max(self.n_state, self.n_control) - self.steps

    def __getitem__(self, idx):

        n = max(self.n_state, self.n_control)
        cut_x = self.data[idx: idx+n, :5]
        cut_y = self.data[idx+n: idx+n+1, -3:]

        if self.transform:
            # cut_x = self.transform(cut_x).cuda()
            cut_x = self.transform(cut_x)

        if self.target_transform:
            # cut_y = self.target_transform(cut_y).cuda()
            cut_y = self.transform(cut_y)

        return cut_x, cut_y


class zonda_Dataset(Dataset):
    def __init__(self, data_np, steps=5, transform=torch.tensor, target_transform=torch.tensor):
        self.data = data_np
        self.steps = steps
        self.transform = transform
        self.target_transform = target_transform

    def __len__(self):
        return self.data.shape[0] - self.steps - 2

    def __getitem__(self, idx):

        cut = self.data[idx: idx + 2 + self.steps, :]
        y_list = self.data[idx + 3: idx + 3 + self.steps, :3]

        if self.transform:
            cut = self.transform(cut)

        if self.target_transform:
            y_list = self.target_transform(y_list)

        # print(cut.shape)
        # print(y_list.shape)

        return cut, y_list

import torch
from torch import nn


class MLP2(nn.Module):

    def __init__(self, neurons, steps, n_state, n_control):
        super(MLP2, self).__init__()
        self.device = 'cuda'
        self.neurons = neurons
        self.steps = steps
        self.n_state = n_state
        self.n_control = n_control

        self.f = nn.Sequential(
            nn.Linear(3*self.n_state+2*self.n_control, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, 3),
            nn.Sigmoid()
        )

    def forward(self, cut_x):

        batch = cut_x.shape[0]
        size = cut_x.shape[1] * cut_x.shape[2]
        x = torch.zeros(batch, size)
        for i in range(batch):
            x[i] = cut_x[i].ravel()

        y_pred = self.f(x.unsqueeze(1))

        return y_pred


class LSTM(nn.Module):

    def __init__(self, hidden_dim):
        super(LSTM, self).__init__()
        self.device = 'cuda'
        self.in_dim = 5
        self.hidden_dim = hidden_dim
        self.num_layers = 2

        self.lstm = nn.LSTM(self.in_dim, self.hidden_dim, self.num_layers, batch_first=True)

    def forward(self, x):
        y_pred = self.lstm(x)

        return y_pred


class LPV(nn.Module):

    def __init__(self, neurons):
        super(LPV, self).__init__()
        self.device = 'cuda'
        self.steps = 1
        self.n_state = 1
        self.n_control = 1
        self.neurons = neurons

        self.f = nn.Sequential(
            nn.Linear(3*self.n_state+2*self.n_control, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, 5),
            nn.Sigmoid()
        )

        self.c = nn.Linear(5, 3)

        self.g = nn.Sequential(
            nn.Linear(3 * self.n_state + 2 * self.n_control, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, self.neurons),
            nn.ReLU(),
            nn.Linear(self.neurons, 3),
            nn.Sigmoid()
        )

    def forward(self, cut):  # x: [ x, y, psi, t, s] * self.steps + 2

        y_pred = self.c(torch.matmul(self.f(cut), cut)) + self.g(cut)
        print(f"y_pred: {y_pred}")
        return y_pred

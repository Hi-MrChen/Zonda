import json
import numpy as np

r1 = 0.5
r = 0.65
r2 = 0.8

L = 0.5

X = []
Y = []
Xi = []
Yi = []
Xo = []
Yo = []

for i in range(0, 200):
    X.append(-r)
    Y.append(L - 2 * L * i / 200)

    Xi.append(-r1)
    Yi.append(L - 2 * L * i / 200)

    Xo.append(-r2)
    Yo.append(L - 2 * L * i / 200)

for i in range(0, 360):
    X.append(-r * np.cos(np.pi * i / 360))
    Y.append(-L - r * np.sin(np.pi * i / 360))

    Xi.append(-r1 * np.cos(np.pi * i / 360))
    Yi.append(-L - r1 * np.sin(np.pi * i / 360))

    Xo.append(-r2 * np.cos(np.pi * i / 360))
    Yo.append(-L - r2 * np.sin(np.pi * i / 360))

for i in range(0, 200):
    X.append(r)
    Y.append(-L + 2 * L * i / 200)

    Xi.append(r1)
    Yi.append(-L + 2 * L * i / 200)

    Xo.append(r2)
    Yo.append(-L + 2 * L * i / 200)

for i in range(0, 360):
    X.append(r * np.cos(np.pi * i / 360))
    Y.append(L + r * np.sin(np.pi * i / 360))

    Xi.append(r1 * np.cos(np.pi * i / 360))
    Yi.append(L + r1 * np.sin(np.pi * i / 360))

    Xo.append(r2 * np.cos(np.pi * i / 360))
    Yo.append(L + r2 * np.sin(np.pi * i / 360))

data = {"X": X, "Y": Y, "X_i": Xi, "Y_i": Yi, "X_o": Xo, "Y_o": Yo}
data = json.dumps(data)

file = open('track.json', 'w')
file.write(data)
file.close()
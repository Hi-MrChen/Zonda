# Zonda

Zonda is a fast **autonomous vehicle** modified on a **1:10 RC car**. 



I am now using the car to do the following experiments：

 	1. Learning Vehicle model (state transfer) 
 	2. MPC on a given track

The computer on the car is [Dji Manifold2] whose CPU is intel i7-8550U. The computer is for addressing the position messeges, solving the optimization problem.

The STM32 board on the car is [Dji Robomaster-C-Development-board] whose core is STM32 F4xx. The STM32 board is for controling the servo/motor, acquiring the IMU info.


roslaunch vrpn_client_ros sample.launch server:=10.1.1.198 &sleep 3;
roslaunch fdilink_ahrs ahrs_driver.launch & sleep 2; 
roslaunch ekf nokov.launch & sleep 3
wait;

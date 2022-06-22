# Autonomous navigation method for unmanned vehicles in off-road environment

this is a ROS package which enable autonomous movement in off-road environment with RRT and OCTOMAP 

this work is well test in *ubuntu18.04 ros melodic*

# Dependency

- a laser_slam algorithm, now we support LIO-SAM and aloam

    - aloam
     https://github.com/HKUST-Aerial-Robotics/A-LOAM
    - lio-sam
     https://github.com/TixiaoShan/LIO-SAM

- velodyne

```
sudo apt-get install ros-melodic-velodyne* 
```

- octomap

```
sudo apt-get install ros-melodic-octomap-ros #安装octomap
sudo apt-get install ros-melodic-octomap-msgs
sudo apt-get install ros-melodic-octomap-server
sudo apt-get install ros-melodic-octomap-rviz-plugins
```

- gtsam

```
wget -O ~/Downloads/gtsam.zip https://github.com/borglab/gtsam/archive/4.0.0-alpha2.zip
cd ~/Downloads/ && unzip gtsam.zip -d ~/Downloads/
cd ~/Downloads/gtsam-4.0.0-alpha2/
mkdir build && cd build
cmake ..
sudo make install
```

- qpOASES

```
git clone https://github.com/coin-or/qpOASES.git
mkdir build
cd build
cmake ..
sudo make
sudo make install
```


# octomap_navi 
面向非结构化场景下的无人车的自主导航算法

测试环境: 

- [x] ubuntu18.04 ros melodic
- [ ] ubuntu20.04 ros noetic

# 功能包介绍

``` 
|-- octomap_navi  导航主功能包
|-- scout_description scout小车gazebo模型
|-- scout_gazebo_sim scout小车仿真
```

# 安装

- 激光slam算法(二选一)
    - aloam
    安装参考 https://github.com/HKUST-Aerial-Robotics/A-LOAM
    - lio-sam
    安装参考 https://github.com/TixiaoShan/LIO-SAM

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


# 使用

```
cd sh
./path_in_time.sh
```

* TODO List
    - [x] 实现基于八叉树的rrt前端路径查找
    - [x] 实现八叉树上的通行走廊生成
    - [x] 基于贝塞尔曲线的mini-jerk轨迹优化
    - [x] 优化时间分配问题，提高求解的鲁棒性 
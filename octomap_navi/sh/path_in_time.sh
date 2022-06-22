## 3D rrt path planning in octomap
gnome-terminal --window -e 'bash -c "roslaunch octomap_navi scout_moon_sim.launch; exec bash"' \
--tab -e 'bash -c "sleep 10; rosrun teleop_twist_keyboard teleop_twist_keyboard.py; exec bash"' \
--tab -e 'bash -c "sleep 10; roslaunch octomap_navi tf_trans_aloam.launch; exec bash"' \
--tab -e 'bash -c "sleep 15; roslaunch octomap_navi aloam_velodyne_HDL_32.launch; exec bash"' \
--tab -e 'bash -c "sleep 15; roslaunch octomap_navi octomap_convert.launch slamType:=aloam; exec bash"'  \
--tab -e 'bash -c "sleep 15; roslaunch octomap_navi plan_opt.launch; exec bash"' \
--tab -e 'bash -c "sleep 15; roslaunch octomap_navi traj_server.launch; exec bash"' 


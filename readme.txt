环境为ubuntu 16.04.7
代码更换至其他虚拟机,把src下的功能包放到工作空间下，再重新catkin_make

在功能包castlex_vision_detector
测试CV_Bridge:usb_opencv_test.launch 
人脸检测：usb_face_detector.launch
笑脸检测：usb_smile.launch 
人眼检测：usb_eye_detector.launch 
二维码检测：ar_track_camera.launch 
物体追踪：usb_motion_detector.launch


find_object_2d使用命令，调用笔记本摄像头
roslaunch usb_cam usb_cam-test.launch
rosrun find_object_2d find_object_2d image:=usb_cam/image_raw
最大化，单击“Edit"命令中的“add object from scene"选项，然后把摄像头对准要标记的物体进行拍摄并单击"take picture";
在照片中选择感兴趣的区域，单击"next";
单击"end"完成物体的标记；
通过print_objects_detected节点可以查看运行结果  $ rosrun find_object_2d print_objects_detected
通过/object 话题获取被检测物体的完整信息  $ rostopic echo /objects


开源的机器人仿真项目下载
cd ~/catkin_ws/src
git clone https://github.com/6-robot/wpr_simulation.git
cd ~/catkin_ws/src/wpr_simulation/scripts
./install_for_kinetic.sh 
cd ~/catkin_ws
catkin_make

启动仿真软件
roslaunch wpr_simulation wpb_simple.launch
启动键盘控制
rosrun wpr_simulation keyboard_vel_ctrl
rviz开源项目下载
git clone https://github.com/6-robot/wpb_home.git


语音识别
roslaunch castlex_voice_system castlex_asr.launch
唤醒指令
rostopic pub -1 /voice/castle_awake_topic std_msgs/Int32 "data: 1"

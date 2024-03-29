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

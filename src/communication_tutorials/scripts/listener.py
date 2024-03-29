#! /usr/bin/env python
#coding:utf-8
# license removed for brevity
import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo("I heard %s", data.data)  #打印订阅后的数据

def listener():
	#rospy.init_node('listener')   
	rospy.init_node('listener', anonymous=True)   
	rospy.Subscriber('chatter', String, callback)   
	rospy.spin()  #保持节点运行，直到节点关闭


if __name__ == '__main__':
    listener()

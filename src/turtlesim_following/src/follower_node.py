#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

class Follower:
    def __init__(self):
        rospy.init_node('follower', anonymous=True)
        rospy.Subscriber('/turtle1/pose', Pose, self.follow)
        self.publisher = rospy.Publisher('/turtle2/cmd_vel', Twist, queue_size=10)
        self.rate = rospy.Rate(10)

    def follow(self, data):
        twist = Twist()
        twist.linear.x = 2*(data.x - 5)**0.5
        twist.angular.z =  4*(data.theta - 0)
        self.publisher.publish(twist)

    def run(self):
        while not rospy.is_shutdown():
            self.rate.sleep()

if __name__ == '__main__':
    try:
        follower = Follower()
        follower.run()
    except rospy.ROSInterruptException:
        pass

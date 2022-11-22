#! /usr/bin/env python3
# -*- coding:utf-8 -*-

from cmath import inf
import rospy
import numpy as np
from geometry_msgs.msg import Twist, Vector3
from sensor_msgs.msg import LaserScan
erro = 0
K = 0.3
scan_data = None
dir = 1



def filtroinf(x):
    if x == inf:
        return 3.5
    else:
        return x

def scaneou(dado):
    global erro, scan_data, off
    scan_data = dado.ranges
    readings = dado.ranges
    readings = list(map(lambda x: filtroinf(x), readings))
    if dir == -1:
        erro = sum(readings[220:230]) - sum(readings[130:140])
    else:        
        erro = sum(readings[40:50]) - sum(readings[310:320])
    #print(scan_data[0])

def check_bump():
    global scan_data
    if scan_data != None:
        return [min(scan_data[5:355]) < 0.15]
    return [False, False]



if __name__=="__main__":
    rospy.init_node("autonomous")
    velocidade_saida = rospy.Publisher("/cmd_vel", Twist, queue_size = 3 )
    recebe_scan = rospy.Subscriber("/scan", LaserScan, scaneou)
    last = rospy.Time.now()
    while not rospy.is_shutdown():
        if any(check_bump()) and (rospy.Time.now() - last > rospy.Duration(5)):
            print('bump')
            K *= -1
            dir *= -1
            last = rospy.Time.now()
            velocidade = Twist(Vector3(dir *  0.15, 0, 0), Vector3(0, 0, 0))
            velocidade_saida.publish(velocidade)
            rospy.sleep(0.1)
            continue
        if abs(erro) < 3:
            velocidade = Twist(Vector3(dir *  0.15, 0, 0), Vector3(0, 0, 0))
            velocidade_saida.publish(velocidade)
        else:
            velocidade = Twist(Vector3(0, 0, 0), Vector3(0, 0, K))
        velocidade_saida.publish(velocidade)
        #velocidade_saida.publish(Twist(Vector3(0, 0, 0), Vector3(0, 0, 0)))
        rospy.sleep(0.1)



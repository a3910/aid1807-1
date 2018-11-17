from socket import *
import os,sys
from multiprocessing import *
import traceback
import signal

Host = '0.0.0.0'
Port = 8888
ADDR = (Host,Port)

def handler():
    print('Connect from',coonfd.getpeername())
    while True:
        data = coonfd.recv(1024) 
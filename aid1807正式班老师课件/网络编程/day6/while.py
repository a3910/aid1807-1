import os
from time import sleep, ctime

while True:
    sleep(1)
    print(ctime(), os.getpid())

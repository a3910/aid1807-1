# from socket import *
# import os
# import sys
# from multiprocessing import *
# import traceback
# import signal

# Host = '0.0.0.0'
# Port = 8888
# ADDR = (Host, Port)

# # 客户端处理函数


# def handler():
#     print('Connect from', connfd.getpeername())
#     while True:
#         data = connfd.recv(1024).decode()
#         if not data:
#             break
#         print(data)
#     connfd.send("Receive request".encode())
#     connfd.close()
#     sys.exit(0)


# # 创建套接字


# s = socket()
# s.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)
# s.bind(ADDR)
# s.listen(5)

# signal.signal(signal.SIGCHLD, signal.SIG_IGN)

# # 等待客户端请求
# while True:
#     try:
#         connfd, addr = s.accept()
#     except KeyboardInterrupt:
#         s.close()
#         sys.exit("服务器退出")
#     except Exception:
#         traceback.print_exc()
#         continue

#     p = Process(target=handler)
#     p.daemon = True
#     p.start()

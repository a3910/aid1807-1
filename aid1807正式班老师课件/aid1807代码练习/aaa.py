# -*- coding: utf-8 -*-
from __future__ import unicode_literals
tcp传输
面向连接的传输服务
基于tcp协议的数据传输
传输特点
提供可靠的数据传输，可靠性指数数据传输过程中无丢失，无重复，五失序，无差错。
实现手段：
数据传输断开前都需要进行传输和断开的确认
三次握手:
    tcp传输在数据传输前建立连接的过程
    1，客户端向服务器发出连接请求
    2，服务器收到请求后，回复确认消息，表示允许连接
    3，客户端收到服务器回复，进行最终确认发送确认连接

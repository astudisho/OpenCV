#!/usr/bin/python
import socket
import cv2
import numpy

def recvall(sock, count):
    buf = b''
    while count:
        newbuf = sock.recv(count)
        if not newbuf: return None
        buf += newbuf
        count -= len(newbuf)
    return buf

#TCP_IP = 'localhost'
TCP_IP = '192.168.0.106'
TCP_PORT = 5001

try:
	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	s.bind((TCP_IP, TCP_PORT))

	print('A la escucha ...')

	#conn, addr = s.accept()
	data , addr = s.recvfrom(4096)

	print('Conectado desde ' + str (addr))

	while 1:
		stringData , addr = s.recvfrom(4096)

		data = numpy.fromstring(stringData, dtype='uint8')

		decimg=cv2.imdecode(data,1)		
		
		cv2.imshow('SERVER',decimg)

		k = cv2.waitKey(1) & 0xFF

		if k == 27:
			break

except:
	raise

finally:
	cv2.destroyAllWindows()
	s.close()
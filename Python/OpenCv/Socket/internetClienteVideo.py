#!/usr/bin/python
import socket
import cv2
import numpy

#TCP_IP = 'localhost'
TCP_IP = '192.168.0.106'
TCP_PORT = 5001
CALIDAD = 100

sock = socket.socket()
sock.connect((TCP_IP, TCP_PORT))

capture = cv2.VideoCapture(0)

try:
	while 1:
		ret, frame = capture.read()

		encode_param=[int(cv2.IMWRITE_JPEG_QUALITY),CALIDAD]
		result, imgencode = cv2.imencode('.jpg', frame, encode_param)
		data = numpy.array(imgencode)
		stringData = data.tostring()

		sock.send( str(len(stringData)).ljust(16));
		sock.send( stringData );
		
		decimg=cv2.imdecode(data,1)

		cv2.imshow('CLIENT',decimg)

		k = cv2.waitKey(1) & 0xFF
		if k == 27:
			break

except:
	raise

finally:
	sock.close()
	cv2.destroyAllWindows()
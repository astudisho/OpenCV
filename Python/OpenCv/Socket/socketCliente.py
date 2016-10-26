#!/usr/bin/python

import cv2, numpy as np, time, socket,sys, pickle

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)         # Create a socket object
host = socket.gethostname() # Get local machine name
port = 5000		            # Reserve a port for your service.

TAM_BUFFER = 1 * (8 * 1024 * 1024)

try:
	s.connect((host,port))
	while 1:

		buff = s.recv(TAM_BUFFER)
		

		print('Tamano', sys.getsizeof(buff))

		imagen = pickle.loads(buff)

		print(type(imagen))

		#cv2.imshow('video cliente', pickle.loads( buff) )

		print(sys.getsizeof(buff))

		k = cv2.waitKey(1) & 0xFF

		if k == 27:
			break

except:
	cv2.destroyAllWindows()
	#s.shutdown(0)
	s.close()
	raise
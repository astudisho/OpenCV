#!/usr/bin/python

import cv2, numpy as np, time, socket, sys, pickle

video = cv2.VideoCapture(0)


try:
	#Socket
	'''
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	HOST = socket.gethostname()
	PUERTO = 5000

	s.bind((HOST,PUERTO))
	s.listen(5)

	print("En escucha ...")
	c, addr = s.accept()
	print("Conectado " + str(addr))

	'''

	while 1:
		_,imagen = video.read()

		
		dato = np.packbits(imagen)
		dato = imagen.tostring()

		print("Tamano: " + str(sys.getsizeof(dato)))

		#c.sendall(dato)
		dato = np.fromstring(dato, dtype = np.uint8)
		dato = np.unpackbits(dato)

		cv2.imshow('Video',dato)
		
		k = cv2.waitKey(1) & 0xFF

		if k == 27:
			break

except:
	raise

finally:
	video.release()
	cv2.destroyAllWindows()
	#s.shutdown(0)
	#s.close()
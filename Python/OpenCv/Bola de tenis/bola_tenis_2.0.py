import numpy
import cv2

video = cv2.VideoCapture(0)

TITULO = "Bola tenis 2.0"

while(True):	
	_,imagen = video.read()			#Leer camara

	cv2.imshow(TITULO,imagen)

	print(imagen[0][0][0])

	k = cv2.waitKey(5) & 0xFF
	if k == 27:
	    break
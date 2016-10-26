#bola_tenis_1.0.py

import cv2
import numpy

TITULO = "Bola de tenis 1.0"
TITULO_GRIS = "Imagen gris"
TITULO_GAUSIANO = "Gaussian smoothing"

video = cv2.VideoCapture(0)
contador = 1

hmn = 12
hmx = 37
smn = 145
smx = 255
vmn = 186
vmx = 255


def mostrarImagen(imagen, titulo = 'Video'):
	cv2.imshow(titulo,imagen)

while(True):	
	_,imagen = video.read()			#Leer camara

			
	gris = cv2.cvtColor(imagen, cv2.COLOR_BGR2GRAY)

	#hsv = cv2.cvtColor(imagen, cv2.COLOR_BGR2HSV)
	#hue,sat,val = cv2.split(hsv)

	gausiano = cv2.GaussianBlur(gris,(5,5),0)
	circulos = cv2.HoughCircles(gausiano,cv2.HOUGH_GRADIENT,2,120,param1=120,param2=50,minRadius=10,maxRadius=0)


	print(contador)
	#if type(circulos) != 'NoneType'
	
		

	mostrarImagen(imagen,TITULO)	#Mostrar imagen
	#mostrarImagen(gris, TITULO_GRIS)
	#mostrarImagen(gausiano, TITULO_GAUSIANO)

	k = cv2.waitKey(5) & 0xFF
	if k == 27:
	    break
	else:
		contador +=1

video.release()
cv2.destroyAllWindows()
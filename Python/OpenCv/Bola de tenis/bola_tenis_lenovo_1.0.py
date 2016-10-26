#bola_tenis_lenovo_1.0.txt

import cv2, numpy as np

IT_DILATACION = 20
IT_EROSION = 10
TAMANO_KERNEL = (5,5)
KERNEL_GAUSSIAN = (9,9)
DP = 2
MIN_DIST = 1080
PARAM1 = 120
PARAM2 = 50
MIN_RADIO = 0
MAX_RADIO = 0

kernel = np.ones(TAMANO_KERNEL,np.uint8)	#Kernel
cap = cv2.VideoCapture(0)			#Toma la primer entrada de video

def nada(x):
	pass

#Valores HSV
minH = 28
maxH = 55
minS = 42
maxS = 160
minV = 84
maxV = 240

while True:
	_,frame = cap.read()

	hsv = cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
	hue,sat, val = cv2.split(hsv)

	#Aplica las mascaras con los valores de la bola
	hTresholding = cv2.inRange(np.array(hue),np.array(minH),np.array(maxH))
	sTresholding = cv2.inRange(np.array(sat),np.array(minS),np.array(maxV))
	VTresholding = cv2.inRange(np.array(val),np.array(minV),np.array(maxV))

	#Junta los resultados de aplicar las mascaras en un solo arreglo
	tracking = cv2.bitwise_and(hTresholding,cv2.bitwise_and(sTresholding,VTresholding))

	#Aplica las transformaciones despues de unir las 3 mascaras
	

	gausiano = cv2.GaussianBlur(tracking,KERNEL_GAUSSIAN,0)
	medianBlur = cv2.medianBlur(gausiano,5)
	morph_ex = cv2.morphologyEx(medianBlur,cv2.MORPH_CLOSE,kernel)
	erosion = cv2.erode(morph_ex,KERNEL_GAUSSIAN,)
	dilatacion = cv2.dilate(erosion,kernel,IT_DILATACION)

	#Deteccion de circulos
	circulos = cv2.HoughCircles (gausiano,cv2.HOUGH_GRADIENT,DP,MIN_DIST,param1=PARAM1,param2=PARAM2,minRadius=MIN_RADIO, maxRadius=MAX_RADIO )

	if circulos is not None: 
		for i in circulos[0,:]:
		# If the ball is far, draw it in green
			print(i[0],i[1],i[2])
			if int(round(i[2])) < 30:
				cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,255,0),5)
				cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),2,(0,255,0),10)
				# else draw it in red
			elif int(round(i[2])) > 35:
				cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,0,255),5)
				cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),2,(0,0,255),10)
	else:
		print(0)

	cv2.imshow("Dilatacion",dilatacion)
	cv2.imshow("Erosion",erosion)
	cv2.imshow("Median blur",medianBlur)
	cv2.imshow("Morph_ex", morph_ex)
	cv2.imshow("Gausiano",gausiano)
	cv2.imshow("Bolas de tenis",frame)

	k = cv2.waitKey(5) & 0xFF
	if k == 27:
		break

cap.release()
cv2.destroyAllWindows()
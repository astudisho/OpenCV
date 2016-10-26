from picamera.array import PiRGBArray
from picamera import PiCamera
import numpy as np
import time
import cv2

# initialize the camera and grab a reference to the raw camera capture
camera = PiCamera()
camera.resolution = (640, 480)
camera.framerate = 30
rawCapture = PiRGBArray(camera, size=camera.resolution)

opciones = 2

DP = 2
MIN_DIST = 1080
PARAM1 = 120
PARAM2 = 50
MIN_RADIO = 10
MAX_RADIO = 0
TAM_KERNEL = 6
KERNEL = np.ones((TAM_KERNEL,TAM_KERNEL),np.uint8)
ITER_ERODE = 2
ITER_DILATE = 10

if opciones == 1: # Cuarto viendo hacia el closet
  minYellowHsv = [22,40,45]
  maxYellowHsv = [47,140,255]

if opciones == 2: # Mesitaimport cv2 viendo hacia la pared con lucesw prendidas
  minYellowHsv = [30,65,90]
  maxYellowHsv = [48,140,255]

for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
	# grab the raw NumPy array representing the image, then initialize the timestamp
	# and occupied/unoccupied text
	image = frame.array

	hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)

	# define range of blue color in HSV
	lower_blue = np.array(minYellowHsv)
	upper_blue = np.array(maxYellowHsv)
	 
	# Threshold the HSV image to get only blue colors
	mask = cv2.inRange(hsv, lower_blue, upper_blue)

	res = cv2.bitwise_and(image,image, mask= mask)
	gaus = cv2.GaussianBlur(res,(9,9),0)
	img = cv2.medianBlur(gaus,5)
	erode = cv2.erode(img,KERNEL,ITER_ERODE)
	dilate = cv2.dilate(erode,KERNEL,ITER_DILATE)
	#opening = cv2.morphologyEx(dilate,cv2.MORPH_OPEN,KERNEL)
	#closing = cv2.morphologyEx(dilate,cv2.MORPH_CLOSE,KERNEL)
	gris = cv2.cvtColor(dilate,cv2.COLOR_BGR2GRAY)	

	circles = cv2.HoughCircles (gris,cv2.HOUGH_GRADIENT,DP,MIN_DIST,param1=PARAM1,param2=PARAM2,minRadius=MIN_RADIO, maxRadius=MAX_RADIO )  
  

	if circles is not None:    
		for i in circles[0,:]:
	    	# If the ball is far, draw it in green
			print(i[0],i[1],i[2])
			if int(round(i[2])) < 30:
				cv2.circle(img,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,255,0),5)
				cv2.circle(img,(int(round(i[0])),int(round(i[1]))),2,(0,255,0),10)
	        	# else draw it in red
			elif int(round(i[2])) > 35:
				cv2.circle(img,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,0,255),5)
				cv2.circle(img,(int(round(i[0])),int(round(i[1]))),2,(0,0,255),10)
	else:
		print(0)

	# show the frame
	cv2.imshow("Img", img)
	key = cv2.waitKey(1) & 0xFF
 
	# clear the stream in preparation for the next frame
	rawCapture.truncate(0)
 
	# if the `q` key was pressed, break from the loop
	if key == ord("q"):
		break
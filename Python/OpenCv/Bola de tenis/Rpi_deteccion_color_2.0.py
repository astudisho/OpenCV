from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
import numpy as np

kernel = np.ones((5,5),np.uint8)

ESCALA = 1.6
FLAGS = 100
RESOLUCION = (360, 270)
FORMATO = "bgr"
BREAK = 100
FRAMERATE = 5
COLOR_CUADRADO = (0,255,0)
COLOR_CIRCULO = (255,0,0)

#Cuarto
#HoughCircles
DP = 2
MIN_DIST = 1080
PARAM1 = 120
PARAM2 = 50
MIN_RADIO = 0
MAX_RADIO = 0
TAM_KERNEL = 6
KERNEL = np.ones((TAM_KERNEL,TAM_KERNEL),np.uint8)
ITER_ERODE = 2
ITER_DILATE = 15

def nothing(x):
	pass

opcion = 1

if opcion == 1:
	minYellowHsv = [26,175,57]
	maxYellowHsv = [35,240,255]

# initialize the camera and grab a reference to the raw camera capture
camera = PiCamera()
camera.resolution = RESOLUCION
camera.framerate = FRAMERATE
camera.rotation = 180
camera.video_denoise = False
camera.image_effect = 'none'
camera.meter_mode = 'spot'
rawCapture = PiRGBArray(camera, size=RESOLUCION)

for image in camera.capture_continuous(rawCapture, format=FORMATO, use_video_port=True):

	frame = image.array

	hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

	# define range of blue color in HSV
	lower_blue = np.array(minYellowHsv)
	upper_blue = np.array(maxYellowHsv)
	 
	# Threshold the HSV image to get only blue colors
	mask = cv2.inRange(hsv, lower_blue, upper_blue)
	 
	# Bitwise-AND mask and original image
	res = cv2.bitwise_and(frame,frame, mask= mask)
	gaus = cv2.GaussianBlur(res,(9,9),0)
	img = cv2.medianBlur(gaus,5)
	erode = cv2.erode(img,KERNEL,ITER_ERODE)
	dilate = cv2.dilate(erode,KERNEL,ITER_DILATE)
	gris = cv2.cvtColor(dilate,cv2.COLOR_BGR2GRAY)

	ret,thresh = cv2.threshold(gris,127,255,0)
	_,contours, hierarchy = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	contorno = gris

	cv2.drawContours(contorno, contours, -1, (0,255,0), 3)

	circles = cv2.HoughCircles (gris,cv2.HOUGH_GRADIENT,DP,MIN_DIST,param1=PARAM1,param2=PARAM2,minRadius=MIN_RADIO, maxRadius=MAX_RADIO )  
	#circles = cv2.HoughCircles(gris,cv2.HOUGH_GRADIENT,2,120,param1=120,param2=50,minRadius=10,maxRadius=0)

	if circles is not None:    
		for i in circles[0,:]:
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

 
	cv2.imshow('frame',frame)
	cv2.imshow('gris',gris)
	cv2.imshow('dilate',dilate)
	cv2.imshow('erode',erode)

	key = cv2.waitKey(1) & 0xFF

	if key == 27:
		break	
	
	# clear the stream in preparation for the next frame
	rawCapture.truncate(0)
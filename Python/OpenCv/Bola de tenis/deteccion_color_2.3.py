import cv2
import numpy as np
 
cap = cv2.VideoCapture(0)

opciones = 1

#Cuarto
#HoughCircles
DP = 2
MIN_DIST = 1080
PARAM1 = 12
PARAM2 = 50
MIN_RADIO = 0
MAX_RADIO = 0
TAM_KERNEL = 5
KERNEL = np.ones((TAM_KERNEL,TAM_KERNEL),np.uint8)
ITER_ERODE = 2
ITER_DILATE = 10


if opciones == 1: # Cuarto viendo hacia el closet
  minYellowHsv = [28,42,84]
  maxYellowHsv = [55,160,240]

if opciones == 2: # Mesitaimport cv2 viendo hacia la pared con lucesw prendidas
  minYellowHsv = [30,65,90]
  maxYellowHsv = [48,140,255]

 
while(1):
 
  # Take each frame
  _, frame = cap.read()
  # Convert BGR to HSV
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
  #opening = cv2.morphologyEx(dilate,cv2.MORPH_OPEN,KERNEL)
  #closing = cv2.morphologyEx(dilate,cv2.MORPH_CLOSE,KERNEL)
  gris = cv2.cvtColor(dilate,cv2.COLOR_BGR2GRAY)

  ret,thresh = cv2.threshold(gris,127,255,0)
#  _,contours, hierarchy = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
#  contorno = gris

#  cv2.drawContours(contorno, contours, -1, (0,255,0), 3)

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
  cv2.imshow('gausiano',gaus)
  #cv2.imshow('mask',mask)
  cv2.imshow('res',res)
  cv2.imshow('img',img)
  #cv2.imshow('gris',gris)
  cv2.imshow('erode',erode)
  cv2.imshow('dilate',dilate)
  #cv2.imshow('opening',opening)
  #cv2.imshow('closing',closing)
  #cv2.imshow('gradient',gradient)
#   cv2.imshow('contornos',contorno)
  

  k = cv2.waitKey(5) & 0xFF
  if k == 27:
    break
cv2.destroyAllWindows()

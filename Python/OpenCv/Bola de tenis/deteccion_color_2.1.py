import cv2
import numpy as np
 
cap = cv2.VideoCapture(0)


minYellowHsv = [22,40,45]
maxYellowHsv = [47,140,255]

#HoughCircles
DP = 2
MIN_DIST = 1080
PARAM1 = 120
PARAM2 = 50
MIN_RADIO = 10
MAX_RADIO = 0

 
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
  gris = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)


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
  #cv2.imshow('gausiano',gaus)
  cv2.imshow('mask',mask)
  #cv2.imshow('res',res)
  #cv2.imshow('img',img)
  cv2.imshow('gris',gris)

  k = cv2.waitKey(5) & 0xFF
  if k == 27:
    break
cv2.destroyAllWindows()
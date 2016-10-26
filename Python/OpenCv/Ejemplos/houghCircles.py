#!/usr/bin/python

import numpy as np
import cv2

DP = 2
MIN_DIST = 1080
PARAM1 = 12
PARAM2 = 50
MIN_RADIO = 30
MAX_RADIO = 200
TAM_KERNEL = 5
KERNEL = np.ones((TAM_KERNEL,TAM_KERNEL),np.uint8)
ITER_ERODE = 2
ITER_DILATE = 10

cap = cv2.VideoCapture(0)

cap.set(3,640)
cap.set(4,400)

while(True):
    # Capture frame-by-frame
    ret, frame = cap.read()

    # Our operations on the frame come here
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    circles = cv2.HoughCircles (gray,cv2.HOUGH_GRADIENT,DP,MIN_DIST,param1=PARAM1,param2=PARAM2,minRadius=MIN_RADIO, maxRadius=MAX_RADIO )

    if circles is not None: 
	    for i in circles[0,:]:
	      # If the ball is far, draw it in green
	      if int(round(i[2])) < 30:
	        cv2.circle(gray,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,255,0),5)
	        cv2.circle(gray,(int(round(i[0])),int(round(i[1]))),2,(0,255,0),10)
	        # else draw it in red
	      elif int(round(i[2])) > 35:
	        cv2.circle(gray,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,0,255),5)
	        cv2.circle(gray,(int(round(i[0])),int(round(i[1]))),2,(0,0,255),10)

    # Display the resulting frame
    cv2.imshow('frame',gray)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# When everything done, release the capture
cap.release()
cv2.destroyAllWindows()

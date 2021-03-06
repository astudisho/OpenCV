import cv2
import numpy as np
 
cap = cv2.VideoCapture(0)


minYellowHsv = [22,40,45]
maxYellowHsv = [47,140,255]
 
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
 
  cv2.imshow('frame',frame)
  cv2.imshow('gausiano',gaus)
  cv2.imshow('mask',mask)
  cv2.imshow('res',res)

  k = cv2.waitKey(5) & 0xFF
  if k == 27:
    break
 
cv2.destroyAllWindows()
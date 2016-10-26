import cv2
import numpy as np
import time


kernel = np.ones((5,5),np.uint8)

# Take input from webcam
inicio = time.time()
frameOriginal = cv2.imread('imagen.jpg',1)
fin = time.time()

print (fin - inicio)

def nothing(x):
    pass
# Creating a windows for later use
cv2.namedWindow('HueComp')
cv2.namedWindow('SatComp')
cv2.namedWindow('ValComp')
cv2.namedWindow('closing')
cv2.namedWindow('tracking')

h = 80,87
s = 90,188
v = 86,160

# Creating track bar for min and max for hue, saturation and value
# You can adjust the defaults as you like
cv2.createTrackbar('hmin', 'HueComp',h[0],179,nothing)
cv2.createTrackbar('hmax', 'HueComp',h[1],179,nothing)

cv2.createTrackbar('smin', 'SatComp',s[0],255,nothing)
cv2.createTrackbar('smax', 'SatComp',s[1],255,nothing)

cv2.createTrackbar('vmin', 'ValComp',v[0],255,nothing)
cv2.createTrackbar('vmax', 'ValComp',v[1],255,nothing)

# My experimental values
hmn = 22
hmx = 40
smn = 40
smx = 140
vmn = 65
vmx = 255



while True:
    frame = frameOriginal

    hsv = cv2.cvtColor(frame,cv2.COLOR_RGB2HSV)

    hue,sat,val = cv2.split(hsv)

    
    # get info from track bar and appy to result
    hmn = cv2.getTrackbarPos('hmin','HueComp')
    hmx = cv2.getTrackbarPos('hmax','HueComp')
    

    smn = cv2.getTrackbarPos('smin','SatComp')
    smx = cv2.getTrackbarPos('smax','SatComp')


    vmn = cv2.getTrackbarPos('vmin','ValComp')
    vmx = cv2.getTrackbarPos('vmax','ValComp')
    

    # Apply thresholding
    hthresh = cv2.inRange(np.array(hue),np.array(hmn),np.array(hmx))
    sthresh = cv2.inRange(np.array(sat),np.array(smn),np.array(smx))
    vthresh = cv2.inRange(np.array(val),np.array(vmn),np.array(vmx))

    # AND h s and v
    tracking = cv2.bitwise_and(hthresh,cv2.bitwise_and(sthresh,vthresh))

    # Some morpholigical filtering
    dilation = cv2.dilate(tracking,kernel,iterations = 1)
    closing = cv2.morphologyEx(dilation, cv2.MORPH_CLOSE, kernel)
    morphEx = closing
    closing = cv2.GaussianBlur(closing,(5,5),0)

    # Detect circles using HoughCircles
    circles = cv2.HoughCircles(closing,cv2.HOUGH_GRADIENT,2,120,param1=120,param2=50,minRadius=10,maxRadius=0)
    # circles = np.uint16(np.around(circles))

    #Draw Circles
 
    
    if circles is not None:
            for i in circles[0,:]:
                print(i[0],i[1],i[2])
                # If the ball is far, draw it in green
                if int(round(i[2])) < 30:
                    cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,255,0),5)
                    cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),2,(0,255,0),10)
                # else draw it in red
                elif int(round(i[2])) > 35:
                    cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),int(round(i[2])),(0,0,255),5)
                    cv2.circle(frame,(int(round(i[0])),int(round(i[1]))),2,(0,0,255),10)
                    buzz = 1
    
    #you can use the 'buzz' variable as a trigger to switch some GPIO lines on Rpi :)
    # print buzz                    
    # if buzz:
        # put your GPIO line here
        
    
    #Show the result in frames
    #cv2.imshow('HueComp',hthresh)
    #cv2.imshow('SatComp',sthresh)
    #cv2.imshow('ValComp',vthresh)
    #cv2.imshow('closing',closing)
    cv2.imshow('tracking',frame)
    #cv2.imshow('dilation',dilation)
    #cv2.imshow('MorphEx Closing',morphEx)
    #cv2.imshow('HSV', tracking) 

    #time.sleep(1)
    #print('Un ciclo')

    if (cv2.waitKey(0) & 0xFF) == 27:
        break
    else:
        raw_input()	

cv2.destroyAllWindows()

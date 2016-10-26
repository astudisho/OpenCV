FLAGS = 100
ESCALA = 1.3
FRAME = 0

import cv2
cap=cv2.VideoCapture(0)
ojos=cv2.CascadeClassifier('haarcascade_eye.xml')
rostros=cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

i = 0

while True:
    _,frame=cap.read()
    gris=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    rostro=rostros.detectMultiScale(
    gris,
    scaleFactor=ESCALA,
    minSize=(2,2),
    flags=FLAGS
    )
    ojo=ojos.detectMultiScale(
    gris,
    scaleFactor=ESCALA,
    minSize=(30,30),
    maxSize=(70,70),
    flags=FLAGS
    )

    FRAME = frame

    for(x,y,w,h) in rostro:
        
        cor = str(x)+ " " +  str(y) + "\n"
        print cor
        fo = open("dato.txt", "wb")
        fo.write(cor);
        # Close opend file
        fo.close()
        
        cv2.rectangle(FRAME,(x,y),(x+w,y+h),(0,255,0),2)

    for(x,y,w,h) in ojo:
        cv2.rectangle(FRAME,(x,y),(x+w,y+h),(0,255,255),2)
        
    cv2.imshow("frame",FRAME)
    k=cv2.waitKey(5) & 0xFF
    if k==27: break
cv2.destroyAllWindows()

from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2

ESCALA = 1.6
FLAGS = 100
RESOLUCION = (480, 360)
FORMATO = "bgr"
BREAK = 100
FRAMERATE = 30
COLOR_CUADRADO = (0,255,0)
COLOR_CIRCULO = (255,0,0)

# initialize the camera and grab a reference to the raw camera capture
camera = PiCamera()
camera.resolution = RESOLUCION
camera.framerate = FRAMERATE
camera.rotation = 0
camera.video_denoise = False
camera.image_effect = 'none'
camera.meter_mode = 'spot'
rawCapture = PiRGBArray(camera, size=RESOLUCION)

#Cascadas
ojos = cv2.CascadeClassifier('haarcascade_eye.xml')
rostros = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

# allow the camera to warmup
time.sleep(0.1)

contador = 0

# capture frames from the camera
for frame in camera.capture_continuous(rawCapture, format=FORMATO, use_video_port=True):
        contador+=1
        print(contador)       

        # grab the raw NumPy array representing the image, then initialize the timestamp
        # and occupied/unoccupied text
        image = frame.array       

        gris = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)  #Convierte la imagen en tono de grises$

        #Deteccion rostro
        rostro = rostros.detectMultiScale(
        gris,
        scaleFactor = ESCALA,
        minSize=(2,2),
        flags = FLAGS
        )

        #deteccion ojos

        #ojo = ojos.detectMultiScale(
        #gris,
        #scaleFactor=1.1,
        #minSize=(30,30),
        #maxSize=(70,70)        
        #)
        for(x,y,w,h) in rostro:
                #cv2.rectangle(image,(x,y),(x+w,y+h),COLOR_CUADRADO,2)
                cv2.circle(image, (int(x+w/2),int(y+h/2)), int(w/2), COLOR_CIRCULO,2)

        #for(x,y,w,h) in ojo:
        #        cv2.rectangle(image,(x,y),(x+w,y+h),(0,255,255),2)

        # show the frame
        cv2.imshow("Deteccion Caras", image)
        key = cv2.waitKey(1) & 0xFF

        # clear the stream in preparation for the next frame
        rawCapture.truncate(0)

        # if the `q` key was pressed, break from the loop
        if key == ord("q"):
                cv2.destroyAllWindows()
                break
        if contador == BREAK:
                break
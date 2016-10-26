import cv2
import numpy as np

RESOLUCION = (720,540)
FORMATO = 'bgr'
FPS = 5

camera = PiCamera()
camera.resolution = RESOLUCION
camera.rotation = 180

raw_capture = PiRGBArray(camera, size=RESOLUCION)

for image in camera.capture_continuous(rawCapture, format=FORMATO, use_video_port=True):
	frame = image.array

	cv2.imshow('Imagen', frame)

	if key == 27:
		break

cv2.imwrite('imagen',frame)
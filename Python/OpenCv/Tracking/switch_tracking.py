import numpy as np
import cv2
import sys

print(sys.argv)

if len(sys.argv) != 2:
    print('Input video name is missing')
    exit()

cv2.namedWindow("tracking")

captureInput = 0

try:
    captureInput = int(sys.argv[1])
except ValueError, ve:
    captureInput = sys.argv([1])

camera = cv2.VideoCapture(captureInput)

ok, image=camera.read()
if not ok:
    print('Failed to read video')
    exit()
bbox = cv2.selectROI("tracking", image)
tracker = cv2.TrackerMIL_create()
init_once = False

while camera.isOpened():
    ok, image=camera.read()
    if not ok:
        print 'no image to read'
        break

    if not init_once:
        ok = tracker.init(image, bbox)
        init_once = True

    ok, newbox = tracker.update(image)
    print ok, newbox

    if ok:
        p1 = (int(newbox[0]), int(newbox[1]))
        p2 = (int(newbox[0] + newbox[2]), int(newbox[1] + newbox[3]))
        cv2.rectangle(image, p1, p2, (200,0,0))

    cv2.imshow("tracking", image)
    k = cv2.waitKey(1) & 0xff
    if k == 27 : break # esc pressed
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;

//auto	MIN_HSV = Scalar(30,65,90),
//		MAX_HSV = Scalar(48,140,255);

Scalar MIN_HSV = Scalar(30,65,90),
		MAX_HSV = Scalar(48,140,255);

int main(int, char**)
{
	VideoCapture cap(0);
	if(!cap.isOpened())
		return -1;

	short 	altura = cap.get(CV_CAP_PROP_FRAME_HEIGHT),
			ancho = cap.get(CV_CAP_PROP_FRAME_WIDTH);

	Mat hsv, frame, mask, bitwise;

	for(;;)
	{
		hsv = 0; mask = 0; frame = 0; bitwise = 0;

		cap >> frame;

		resize(frame, frame, Size(ancho * 1.5, altura * 1.5), 0, 0, INTER_CUBIC);
		imshow("Original", frame);

		//cvtColor(frame, hsv, CV_BGR2GRAY);
		cvtColor(frame,hsv, COLOR_BGR2HSV);
		imshow("HSV", hsv);

		//inRange(hsv, Scalar(30,65,90), Scalar(48,140,255), mask);
		inRange(hsv, MIN_HSV, MAX_HSV, mask);
		imshow("Mask", mask);

		bitwise_and(frame, frame, bitwise, mask);
		imshow("BitWise", bitwise);

		GaussianBlur(bitwise, bitwise, Size(7,7), 1.5, 1.5);
		imshow("GaussianBlur", bitwise);

		medianBlur(bitwise,bitwise, 5);
		imshow("MedianBlur", bitwise);

		if(waitKey(30) >= 0)	
			break;
	}
}
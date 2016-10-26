#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/opencv.hpp>
#include <string>

const string ARCHIVO_CARAS = "";

//using namespace cv;

cv::CascadeClassifier caras = cv::CascadeClassifier("")

main ()
{
	cv::VideoCapture cap(0);

	if (!cap.isOpened())
		return -1;

	cv::Mat frame, cara, gris;

	for(unsigned short i = 0; ; i++)
	{
		gris = frame = cara = 0;

		cap >> frame;

		cv::cvtColor(frame, gris, cv::COLOR_RGB2GRAY);
		imshow("gris", gris);

		if (cv::waitKey(30) > 0)
			break;
	}

	return 0;  
}
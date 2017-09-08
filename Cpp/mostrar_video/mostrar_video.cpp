#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;

const short ALTO = 720, LARGO = 1280;

int main(int, char**)
{
	VideoCapture cap(0);
	if(!cap.isOpened())
		return -1;

	//cap.set(CV_CAP_PROP_FRAME_WIDTH, ALTO);
	//cap.set(CV_CAP_PROP_FRAME_HEIGHT, LARGO);

	//short 	altura = cap.get(CV_CAP_PROP_FRAME_HEIGHT),
	//		ancho = cap.get(CV_CAP_PROP_FRAME_WIDTH);

	//std::cout<<"Altura de frame: "<<altura<<std::endl;
	//std::cout<<"Ancho de frame: "<<ancho<<std::endl;

	Mat edges, frame;
	//namedWindow("edges",1);

	for(;;)
	{
		frame = 0;

		cap >> frame;

		imshow("Original", frame);
		//resize(frame, frame, Size(ancho * 1.5, altura * 1.5), 0, 0, INTER_CUBIC);
		//imshow("Resize", frame);

		//cvtColor(frame, edges, CV_BGR2GRAY);

		//GaussianBlur(edges, edges, Size(7,7), 1.5, 1.5);
		//imshow("GaussianBlur", edges);

		//Canny(edges, edges, 0, 30, 3);
		//imshow("Canny edges", edges);

		if(waitKey(30) >= 0)	
			break;
	}
}
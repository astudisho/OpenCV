#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/opencv.hpp>
#include <thread>
#include <mutex>
#include <string>
#include <iostream>

using namespace cv;

static int contador = 0;
const int maximo = 1000, numHilos = 1;
static bool seguirImprimiendo = true;

static std::mutex bloqueoLectura, bloqueoEscritura;

const short ALTO = 720, LARGO = 1280;


void imprimeNumero(int i)
{
	while(seguirImprimiendo)
	{
		{
			bloqueoLectura.lock();

			std::cout << "Hilo " << i << " imprime " << contador++ << std::endl;

			bloqueoLectura.unlock();
		}

		if(contador > maximo)
			seguirImprimiendo = false;
	}
}

void muestraFrame(int i, cv::VideoCapture cap)
{
	cv::Mat frame, original;

	while(seguirImprimiendo)
	{
		frame = 0;
		original = 0;

		{
			bloqueoLectura.lock();

			cap >> frame;

			cv::imshow("Original",frame);

			std::cout << "Hilo " << i << " imprime " << contador++ << std::endl;

			bloqueoLectura.unlock();
		}

		if(contador > maximo)
			seguirImprimiendo = false;
	}
}


// int main()
// {
// 	cv::VideoCapture cap(0);
// 	cap = cv::VideoCapture(0);
// 	cap.set(CV_CAP_PROP_FRAME_WIDTH, ALTO);
// 	cap.set(CV_CAP_PROP_FRAME_HEIGHT, LARGO);

// 	if(!cap.isOpened())
// 		return -1;

// 	std::thread arregloHilos[ numHilos ];

// 	for(int i = 0; i < numHilos; i++)
// 	{
// 		arregloHilos[ i ] = std::thread(muestraFrame, i, cap);
// 	}

// 	for(int i = 0; i < numHilos; i++)
// 		arregloHilos[ i ].join();

// 	std::cout << "Termino" << std::endl;

// 	return 0;
// }

using namespace cv;


int main(int, char**)
{
	VideoCapture cap(0);
	if(!cap.isOpened())
		return -1;

	Mat edges, frame;

		std::thread arregloHilos[ numHilos ];

	for(int i = 0; i < numHilos; i++)
	{
		arregloHilos[ i ] = std::thread(muestraFrame, i, cap);
	}

	for(int i = 0; i < numHilos; i++)
		arregloHilos[ i ].join();

	std::cout << "Termino" << std::endl;

	// for(;;)
	// {
	// 	frame = 0;

	// 	cap >> frame;

	// 	imshow("Original", frame);

	// 	if(waitKey(30) >= 0)	
	// 		break;
	// }
}
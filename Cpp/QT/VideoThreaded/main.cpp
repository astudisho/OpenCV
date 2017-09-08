#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/opencv.hpp>
#include <string>
#include <thread>
#include <mutex>
#include <ctime>
#include <queue>
#include <shared_mutex>

//using namespace cv;

typedef unsigned char byte;

using std::cout;
using std::endl;
//using std::mutex;

//Constantes
const int numHilosLectura = 1,
numHilosEscritura = 1;

const std::string SEGUNDO_FRAME = "Segundo frame";


//Variables
cv::VideoCapture cap;
cv::Mat frameGlobal;
static std::mutex bloqueoLectura, bloqueoEscritura, bloqueoPila;
static int contadorFramesLectura = 0, contadorFramesEscritura;

std::thread hilosLectura[ numHilosLectura ], hilosEscritura[ numHilosEscritura ];
static std::queue<cv::Mat> filaFrames;

//cv::namedWindow("Frame", CV_WINDOW_AUTOSIZE);

static bool seguirMostrando = true;

cv::Rect rect(0,0,0,0);
cv::Point P1(0,0);
cv::Point P2(0,0);

auto clicked = false;


//Firmas
void mostrarFrame(cv::Mat frame, const int i);
void adquirirFrame(cv::VideoCapture cap, const int i);
void mostrarSegundoFrame(cv::Mat frame);
void checkBoundary();
void onMouse( int event, int x, int y, int f, void* );


//Implementaciones
int main()
{
	//cv::namedWindow("Frame",1);
	cap = cv::VideoCapture(0);

	if(!cap.isOpened()) return -1;

	for( int i = 0; i < numHilosLectura; i++)
		 hilosLectura[ i ] = std::thread( adquirirFrame ,cap, i);

	for( int i = 0; i < numHilosEscritura; i++)
		hilosEscritura[ i ] = std::thread( mostrarFrame ,frameGlobal, i);

	for( int i = 0; i < numHilosLectura; i++)
		hilosLectura[ i ].join();

	for( int i = 0; i < numHilosEscritura; i++)
		hilosEscritura[ i ].join();

	cv::destroyAllWindows();

	return 0;
}


void adquirirFrame(cv::VideoCapture cap,const int i)
{
	cv::Mat segundoFrame;

	while(seguirMostrando)
	{
		{
			//cv::Mat * frame = new cv::Mat();
			cv::Mat frame;
			std::lock_guard<std::mutex> lock(bloqueoLectura);
			//bloqueoLectura.lock();

			frame = 0;

			std::cout << "Hilo " << i << " leyendo frame " << contadorFramesLectura++ << std::endl;

			cap >> frame;

			filaFrames.push(frame);
			//bloqueoLectura.unlock();
		}

		//if(filaFrames.empty()) continue;

		{
			//bloqueoEscritura.lock();
			std::lock_guard<std::mutex> lock(bloqueoEscritura);

			std::cout << "Hilo " << i << " mostrando frame " << contadorFramesEscritura++ << std::endl;

			cv::imshow("Frame", (filaFrames.front()) );

			//delete filaFrames.front();



			auto key = cv::waitKey(10);

			//cout << key << endl;

			if(key  == 27)
				seguirMostrando = false;

			else if (key == 13)
			{
				frameGlobal = filaFrames.front().clone();
				cv::namedWindow(SEGUNDO_FRAME);
				cv::imshow(SEGUNDO_FRAME, frameGlobal );
				cv::setMouseCallback(SEGUNDO_FRAME,onMouse,NULL );
				//cv::waitKey(1);
			}

			filaFrames.pop();

			//bloqueoEscritura.unlock();
		}
	}
}


void mostrarSegundoFrame(cv::Mat frame)
{
}

void mostrarFrame(cv::Mat frame,const int i)
{
//	cv::namedWindow("Frame",1);
//	while(seguirMostrando)
//	{
//		{
////			if(filaFrames.empty()) continue;

////			std::lock_guard<std::mutex> lock(bloqueoEscritura);

////			std::cout << "Hilo " << i << " mostrando frame " << contadorFramesEscritura++ << std::endl;

////			cv::imshow("Frame", filaFrames.front());

////			filaFrames.pop();

////			if(cv::waitKey(15) >= 0)
////				seguirMostrando = false;

////			bloqueoEscritura.unlock();

//		}
//	}
}

void checkBoundary(){
//	   //check croping rectangle exceed image boundary
//	   if(rect.width>img.cols-cropRect.x)
//		 rect.width=img.cols-cropRect.x;

//	   if(rect.height>img.rows-cropRect.y)
//		 rect.height=img.rows-cropRect.y;

//		if(cropRect.x<0)
//		 cropRect.x=0;

//	   if(cropRect.y<0)
//		 cropRect.height=0;
}

void onMouse( int event, int x, int y, int f, void* )
{
//https://stackoverflow.com/questions/22140880/drawing-rectangle-or-line-using-mouse-events-in-open-cv-using-python

	switch(event){

		case  CV_EVENT_LBUTTONDOWN  :
		cout<< "Down ";
										clicked=true;

										P1.x=x;
										P1.y=y;
										P2.x=x;
										P2.y=y;
										break;

		case  CV_EVENT_LBUTTONUP    :
		cout<< "Up ";
										P2.x=x;
										P2.y=y;
										clicked=false;
										break;

		case  CV_EVENT_MOUSEMOVE    :
		cout<< "Moviendo ";
										if(clicked){
										P2.x=x;
										P2.y=y;
										}
										break;

		default                     :   break;


	}

	std::cout << "X: " << x << " Y: " << y << std::endl;
	rectangle(frameGlobal, rect, cv::Scalar(0,255,0), 1, 8, 0 );
	cv::imshow(SEGUNDO_FRAME,frameGlobal);
	//cv::waitKey(1);
}

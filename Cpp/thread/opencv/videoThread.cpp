#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/opencv.hpp>
#include <string>
#include <thread>
#include <mutex>
#include <ctime>

//using namespace cv;

typedef unsigned char byte;

using std::cout;
using std::endl;
using std::mutex;

void mostrarFrame(cv::VideoCapture cap, int i);

void getInfo();
const auto 	RESOLUCION = cv::Size(1280,720);
const float 	RESIZE_ALTO = 1.8,
		RESIZE_ANCHO = 1.8;

static unsigned int contador = 0;

static std::mutex bloqueoLectura, bloqueoEscritura;

static bool seguirMostrando = true;

cv::VideoCapture cap;

static short MAX_FRAME = 10000;

/*numhilos 1
	5.59	100
	
 numHilos 2
 	3.82	68	+32%

 numHilos 3
 	3.25 	58	+42%

 numHilos 4
	1.922

*/

int main (int argc, char **args)
{
	short numHilos = 1;
	//short numHilos = cv::getNumThreads();

	const clock_t inicio = clock();
	const double t = (double)cv::getTickCount();

	//cout << "Argumentos" << args[1] << endl;

	if (argc > 1)
		cap = cv::VideoCapture(args[1]);

	else
		cap = cv::VideoCapture(0);

	std::thread arregloHilos[numHilos];

	if(!cap.isOpened())
		return -1;

	
	for(unsigned short i = 0; i < numHilos; i++)
	{
		arregloHilos[i] = std::thread(mostrarFrame, cap, i);
		//arregloHilos[i] = std::thread(ejecutaHilo,(int)i, cap);
		cout << arregloHilos[i].get_id() << endl;
	}

	for(unsigned short i = 0; i < numHilos; i++)
		arregloHilos[i].join();
	

	//mostrarFrame(cap);

	cv::destroyAllWindows();

	//getInfo();

	const clock_t 	fin = clock();
	const float 	transcurrido = float( fin - inicio ) /  (CLOCKS_PER_SEC );

	cout << "Tiempo transcurrido: " << transcurrido << endl
		 << "FPS reales: " << contador / transcurrido << endl
		 << "Clocks per second " << CLOCKS_PER_SEC << endl;

	return 0;  
}


void getInfo()
{
	cout << "Number of cpus: " << cv::getNumberOfCPUs() << endl
		 << "Number of threads: " << cv::getNumThreads() << endl;

	cout << "MMX: " << cv::checkHardwareSupport(CV_CPU_MMX) << endl
		 << "SSE: " << cv::checkHardwareSupport(CV_CPU_SSE) << endl
		 << "SSE 2: " << cv::checkHardwareSupport(CV_CPU_SSE2) << endl
		 << "SSE 3: " << cv::checkHardwareSupport(CV_CPU_SSE3) << endl
		 << "SSE 4.1: " << cv::checkHardwareSupport(CV_CPU_SSE4_1) << endl
		 << "SSE 4.2: " << cv::checkHardwareSupport(CV_CPU_SSE4_2) << endl
		 << "POPCOUNT: " << cv::checkHardwareSupport(CV_CPU_POPCNT) << endl
		 << "AVX: " << cv::checkHardwareSupport(CV_CPU_AVX) << endl
		 << "AVX2: " << cv::checkHardwareSupport(CV_CPU_AVX2) << endl;
}

void mostrarFrame(cv::VideoCapture cap1, int id)
{
	cv::Mat frame, original;
	
	while(seguirMostrando)
	{
		frame = 0;
		original = 0;

		{
			bloqueoLectura.lock();
			cout << "Hilo " << id << " lee imagen" << endl;
			cap1 >> frame;

			original = frame;

			bloqueoLectura.unlock();

			cout << "Suelta bloqueo lectura " << id << std::endl;
		}

		if (! frame.data )
		{
			seguirMostrando = false;
			break;
		}

		cvtColor(frame, frame, CV_BGR2GRAY);

		GaussianBlur(frame, frame, cv::Size(7,7), 1.5, 1.5);

		Canny(frame, frame, 0, 30, 3);

		cv::resize(frame, frame, RESOLUCION);

		{
			bloqueoEscritura.lock();

			cout << "Hilo " << id << " imprime imagen" << endl;

			cv::imshow("Frame", frame);
			cv::imshow("Original", original);

			if(cv::waitKey(30) >= 0)
				seguirMostrando = false;

//			cout << "Frame: " << ++contador << "\t\t"
//				 << "FPS -> " << cap.get(CV_CAP_PRO P_FPS) << endl << endl;

			bloqueoEscritura.unlock();
			cout << "Suelta bloqueo escritura " << id << std::endl;
		}

//		if(cv::waitKey(1) >= 0 || contador > MAX_FRAME)
//			seguirMostrando = false;
	}
	cout<<"Sale hilo " << id << endl;
}

#include <thread>
#include <iostream>
#include <mutex>

using std::cout;
using std::endl;
using std::thread;
using std::mutex;

typedef unsigned char byte;

const byte numHilos = 10;
static mutex bloqueo;

void ejecutaHilo(int i)
{
	byte a = 6;

	std::lock_guard<mutex> bloquea_hilo(bloqueo);

	{
		byte a = 7;
		
		cout<<"Hola perras desde hilo " << i << endl;

		cout << "a dentro " << a << endl;
	}
}

int main()
{
	thread arregloHilos[numHilos];

	for(byte i = 0; i < numHilos; i++)
		arregloHilos[i] = thread(ejecutaHilo,(int)i);

	cout<<"Funcion main"<<endl;

	for(byte i = 0; i < numHilos; i++)
		arregloHilos[i].join();

	return 0;
}
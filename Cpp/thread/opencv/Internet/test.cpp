#include <iostream>
#include <string.h>
#include <thread>
#include <unistd.h>
#include <opencv2/opencv.hpp>

using namespace std;

void task1 (){
            cout<<"1st thread ";
            cv::Mat frame;
            cv::VideoCapture capture(0);
            if ( capture.isOpened() == false )
            {
                cout<<"Failed to open camera";
            }

            cv::namedWindow("Test OpenCV",1);


            while ( true ){
                capture >> frame;
                cv::imshow("Test OpenCV", frame );
                int key = cv::waitKey(1);
                if ( key == 27 )
                    break;
            }

        }

        void task2 (){
            int n = 0;
            while (1){
                cout<<"2nd thread "<<n<<"\n";
                sleep(3);
                n++;
            }
        }

        int main(int argc, const char * argv[]) {
            // insert code here...
            cout << "Hello, World!\n";
            thread t1(task1);
            thread t2(task2);
            //t1.join();
            //t2.join();
            int n = 0;
            while (1){
                cout<<"main thread "<<n<<"\n";
                sleep(1);
                n++;
            }  
            return 0;
        }

//c++ multithreading 
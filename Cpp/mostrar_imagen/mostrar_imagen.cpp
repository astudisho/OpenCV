//#include <cv.h>
#include <opencv2/highgui.hpp>
#include <iostream>

using namespace cv;
using namespace std;
int main(int argc,char **argv)
{
   Mat image;
   image = imread(argv[1],-2);

   if(argc != 2 || !image.data)
   {
       cout << "No image data\n";
       return -1;
   }

   namedWindow("Display Image",CV_WINDOW_AUTOSIZE);
   imshow("Display Image",image);

   imwrite("japper.jpg",image);

   waitKey(0);
   return 0;
}

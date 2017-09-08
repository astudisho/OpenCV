//http://develnoter.blogspot.mx/2012/05/integrating-opencv-in-qt-gui.html

#include <cvimagewidget.h>

#include <QDialog>
#include <QApplication>
#include <QMainWindow>
#include <QtWidgets>
#include <QCoreApplication>
#include <QPaintEvent>

// int main(int argc, char** argv) {
//     QApplication app(argc, argv);
//     QMainWindow window;
    
//     // Create the image widget
//     CVImageWidget* imageWidget = new CVImageWidget();
//     window.setCentralWidget(imageWidget);
    
//     // Load an image
//     cv::Mat image = cv::imread("somepicture.jpg", true);
//     imageWidget->showImage(image);
    
//     window.show();
    
//     return app.exec();
// }


class WorkerThread : public QThread
{
    public:
    WorkerThread(CVImageWidget * widget)
    {
        imageWidget = widget;
    }
    protected:
        void run()
        {
            //construct image
            if(imageWidget)
            {
                cv::VideoCapture cap = cv::VideoCapture(0);
                cv::Mat frame;

                if(!cap.isOpened()) return;
                while(1)
                {
                    frame = 0;

                    cap >> frame;

                    QCoreApplication::postEvent(imageWidget,new QPaintEvent(imageWidget->rect() ));
                }

                cv::waitKey(1);
            }
        }

    private:
        CVImageWidget * imageWidget;
};

#include <thread>

auto seguirMostrando = true;

void readFrame(CVImageWidget * widget);

int main(int argc, char** argv) {
    QApplication app(argc, argv);
    QMainWindow window;
    
    // Create the image widget
    CVImageWidget* imageWidget = new CVImageWidget();
    //QPointer<CVImageWidget> = new CVImageWidget();
    window.setCentralWidget(imageWidget);
    
    // Load an image
    //cv::Mat image = cv::imread("somepicture.jpg", true);

    //auto hilo = std::thread(readFrame, imageWidget);
    //readFrame(readFrame);

    auto worker = WorkerThread(imageWidget);
    
    window.show();
    
    auto exitCode = app.exec();

    cv::waitKey(1);

    //hilo.join();

    return exitCode;
    
}

void readFrame(CVImageWidget * widget)
{
    cv::VideoCapture cap = cv::VideoCapture(0);
    cv::Mat frame;

    if(!cap.isOpened()) return;

    while(seguirMostrando)
    {
        frame = 0;

        cap >> frame;

        widget->showImage(frame);

        //seguirMostrando = false;

        cv::waitKey(1);
    }
}

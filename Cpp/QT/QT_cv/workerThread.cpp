//https://stackoverflow.com/questions/1508151/painting-issue-on-qwidget-outsite-gui-thread

class WorkerThread : public QThread
{
    //...
signals:
    void updateImage();

protected:
    void run()
    {
        // construct QImage
        //...
        emit updateImage();
    }
    //...
};

//...
widgetThatPaintsImage->connect(
    workerThread, 
    SIGNAL(updateImage()), 
    SLOT(update()),
    Qt::QueuedConnection);
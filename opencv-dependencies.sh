#Fusion repositories
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Dependencias
sudo dnf install cmake python-devel numpy gcc gcc-c++ -y

sudo dnf install gtk2-devel libdc1394-devel libv4l-devel ffmpeg-devel gstreamer-pugins-base-devel -y

sudo dnf install libpng-devel libjpeg-turbo-devel jasper-devel openexr-devel libtiff-devel libwebp-devel -y

sudo dnf install tbb-devel eigen3-devel python-sphinx texlive -y

sudo dnf install git cmake-gui -y


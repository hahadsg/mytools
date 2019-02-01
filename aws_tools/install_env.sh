# install conda and python pkg
curl -O https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh
bash Anaconda3-2018.12-Linux-x86_64.sh
source ~/.bashrc
conda install python=3.6
conda install -c anaconda tensorflow-gpu 
conda install pillow
conda install -c menpo dlib
conda install -c conda-forge opencv

# install git
sudo apt-get install git

# solve cuda error
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-390
sudo apt install nvidia-cuda-toolkit
sudo reboot

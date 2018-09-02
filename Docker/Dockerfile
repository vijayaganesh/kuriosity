FROM ros:kinetic-ros-base-xenial

RUN echo "root:Docker!" | chpasswd

RUN useradd -ms /bin/bash kuriosity

USER root
RUN apt-get update



RUN apt-get install -y \
    ros-kinetic-robot=1.3.2-0* \
    ros-kinetic-catkin \ 
    python-catkin-tools \
    software-properties-common \
    tmux \
    sudo
 
RUN apt-key adv --keyserver keys.gnupg.net --recv-key C8B3A55A6F3EFCDE

RUN sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main" -u && \
    rm -f /etc/apt/sources.list.d/realsense-public.list

RUN apt-get update

RUN ros-kinetic-rgbd-launch \
    librealsense2-dbg \
    librealsense2-dev \
    librealsense2-utils \
    librealsense2-dkms

RUN rm -rf /var/lib/apt/lists/*

USER kuriosity
ADD setup/install_create_dependencies.sh /home/kuriosity/install_create_dependencies.sh
RUN . /home/kuriosity/install_create_dependencies.sh && \
    rm /home/kuriosity/install_create_dependencies.sh

USER root
RUN usermod -a -G dialout kuriosity
FROM ros:kinetic-ros-base-xenial

RUN useradd -ms /bin/bash kuriosity

USER kuriosity
WORKDIR /home/kuriosity

USER root
RUN apt-get update

RUN apt-get install -y \
    ros-kinetic-robot=1.3.2-0* \
    ros-kinetic-catkin \ 
    python-catkin-tools \
    tmux 
RUN rm -rf /var/lib/apt/lists/*

USER kuriosity
ADD setup/install_create_dependencies.sh /home/kuriosity/install_create_dependencies.sh
RUN . /home/kuriosity/install_create_dependencies.sh && \
    rm /home/kuriosity/install_create_dependencies.sh

USER root
RUN usermod -a -G dialout kuriosity
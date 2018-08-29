# Installs the dependencies associated with irobot create

# Creating a seperate workspace for create libraries as they can be built only using catkin build
. /opt/ros/kinetic/setup.sh

mkdir -p /home/kuriosity/create_ws/src
cd /home/kuriosity/create_ws
catkin init

cd src

git clone https://github.com/vijayaganesh/libcreate.git
git clone https://github.com/vijayaganesh/create_autonomy.git

cd /home/kuriosity/create_ws

catkin build

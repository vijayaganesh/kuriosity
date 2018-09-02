# Installs the dependencies associated with irobot create

# Creating a seperate workspace for create libraries as they can be built only using catkin build
. /opt/ros/kinetic/setup.sh

mkdir -p /home/kuriosity/catkin_ws/src
cd /home/kuriosity/catkin_ws/src/
git clone https://github.com/intel-ros/realsense.git
catkin_init_workspace 
cd ..
catkin_make clean
catkin_make -DCATKIN_ENABLE_TESTING=False -DCMAKE_BUILD_TYPE=Release
catkin_make install
echo "source /home/kuriosity/catkin_ws/devel/setup.bash" >> ~/.bashrc

mkdir -p /home/kuriosity/create_ws/src
cd /home/kuriosity/create_ws
catkin init

cd src

git clone https://github.com/vijayaganesh/libcreate.git
git clone https://github.com/vijayaganesh/create_autonomy.git

cd /home/kuriosity/create_ws

catkin build

# fire_tv_server



Install docker on your System

Then download the Dockerfile to your path (for exaple /home/pi/fire_tv_server/)

that cd into the dir -> /home/pi/fire_tv_server/Dockerfile

// create the image from the Dockerfile
#sudo docker build -t "firetvserver" .

then 

// this will start the image and create the container
#sudo docker run -d --restart=always --name python-firetv -p 5556:5556 firetvserver 

//check that the container runs properly
#sudo docker ps
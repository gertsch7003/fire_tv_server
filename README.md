# fire_tv_server



Install docker on your System

Then download the Dockerfile to your path (for exaple /home/pi/fire_tv_server/)

than 

cd into the dir -> /home/pi/fire_tv_server/Dockerfile

than

edit the Dockerfile -> change "IP_FROM_FIRE_TV" to your FireTV-IP Adress -> for example 192.168.1.44


// create the image from the Dockerfile
#sudo docker build -t "firetvserver" .

then 

// this will start the image and create the container
#sudo docker run -d --restart=always --name python-firetv -p 5556:5556 firetvserver 

//check that the container runs properly
#sudo docker ps

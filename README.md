# fire_tv_server

1.) Install docker on your System

2.) Then download my Dockerfile to your path (for exaple /home/pi/fire_tv_server/)

3.) cd into the dir -> /home/pi/fire_tv_server/

// create the image from the Dockerfile
4.) #sudo docker build -t "firetvserver" .


5.) Copy the firetvconfig.yaml in the same dir where the Dockerfile is:
/home/pi/fire_tv_server/firetvconfig.yaml

6.) Configure the firetvconfig as you like. The firetv-ID ist the name (for example: Schlafzimmer) and change the IP Adress

// this will start the image and create the container and make a volume connected to your path: /home/pi/fire_tv_server/ and start the firetv server with the config
7.) #sudo docker run -d --restart=always -v /home/pi/fire_tv_server:/config --name python-firetv -p 5556:5556 firetvserver firetv-server -c /config/firetvconfig.yaml


//check that the container runs properly
optional.) #sudo docker ps




Change the home assistant config:

media_player:
	- platform: firetv
		name: feuer
		device: Wohnzimmer

	- platform: firetv
		name: stick
		device: Schlafzimmer



Here is the original source:
https://github.com/happyleavesaoc/python-firetv
# LoRa-Stack-
Run the TTN Stack version 3.8.1 on the docker platform with MAC OS.
# Installing Docker and Docker compose on MAC
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. 
## Install docker dekstop on mac
Docker Desktop for Mac already include Compose along with other Docker apps, so Mac users do not need to install Compose separately. 
## Setting docker and docker compose
### 1. Check whether Toolbox DOCKER environment variables are set:

 sudo env | grep DOCKER
 
 DOCKER_HOST=tcp://192.168.99.100:2376
 
 DOCKER_MACHINE_NAME=default
 
 DOCKER_TLS_VERIFY=1
 DOCKER_CERT_PATH=/Users/<your_username>/.docker/machine/machines/default
 
If this command returns no output, you are ready to use Docker Desktop.
If it returns output then unset the DOCKER environment variables to make the client talk to the Docker Desktop Engine.
### 2. Unset all the docker variables at once:
unset ${!DOCKER_*}

Now, this command should return no output:
sudo env | grep DOCKER 

Docker Desktop does not use docker-machine to provision its VM. The Docker Engine API is exposed on a socket available to the Mac host at /var/run/docker.sock. This is the default location Docker and Docker Compose clients use to connect to the Docker daemon, so you can use docker and docker-compose CLI commands on your Mac.
sudo chmod 666 /var/run/docker.sock

## Certificates
The Things Stack will be configured with Transport Layer Security (TLS) and HTTPS. This requires a TLS certificate and a corresponding key. Here we’ll request a free, trusted certificate from Let’s Encrypt.

### Automatic Certificate Management (ACME)
mkdir ./acme
sudo chown 886:886 ./acme

## Configuration
we will configure The Things Stack as a private deployment on localhost. 

docker-compose.yml          
config/
└── stack/
    └── ttn-lw-stack.yml    



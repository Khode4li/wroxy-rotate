<h4 align="center"> do your fuzzing without getting banned :D <span style="color: red;">#K2K</span> </h4>
<p align="center">
  <a href="#About-Project">About Project</a> •
  <a href="#Installation">Installation</a> •
  <a href="#Usage">Usage</a> •
  <a href="https://t.me/khode_4li">Contact Me</a>
</p>

## About Project
This project automates the setup of multiple VPN proxy servers using Docker and HAProxy. It allows users to deploy a configurable number of VPN proxies, each potentially assigned to a different country, and use them through a single HAProxy instance.

## Installation
1. Clone the Repository:
```bash
git clone https://github.com/Khode4li/wroxy-rotate && cd wroxy-rotate
```
2. Run the `Installer`
```bash
chmod +x installer
./installer
```
3. At first, it will build the Docker image if it does not exist. Then it will ask you for the number of proxies and the country. After that, it will ask you to enter the HAProxy port (to which you will connect). Finally, it builds the containers and stop file.

## Usage
After running the setup script, you will have multiple proxy containers and a HAProxy container running. The HAProxy container will balance the load across the proxies.

### Stopping and Removing Containers
To stop and remove all proxy containers along with the HAProxy container, use the provided script:
```bash
./stop_and_remove_proxies.sh
```

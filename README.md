# A tool build for check and download file automatic from baidu netdisk

a tool based on docker and bypy , that help you check and download file from baidu netdisk
## warn
* your file on baidu net disk will remove after download. you can find the file in trash path before baidu clean it.

## usage *it was test on ubuntu 18.04*
* install docker and docker-compose.you can follow the doc on [docker official ](https://www.docker.com/get-started) as well
```
sudo apt update -y 
sudo apt install -y docker docker-compose git
```
* go into the project ,build and start container
```
git clone https://github.com/hellolittile/baidu_netdisk_sync_tools.git
cd baidu_netdisk_sync_tools
sudo docker-compose up -d
```
* set your token
you can folow the guide from project [bypy](https://github.com/houtianze/bypy) 
```
sudo docker -exec -it bdnd_tools bypy info
```
* save/move file to /app/bypy/ at baidu net disk
* the program will check every 10s , you can change the rule in the file init
* default download path can change be change by volumes params in docker-compose.yml




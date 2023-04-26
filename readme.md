# ![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white) ![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white) Docker project for development environment  
This Docker project allows you to create a development environment with NeoVim. You can easily launch the environment with Docker Compose and link your local working directory with the container's working directory.

## Requirements
- Docker
- Docker Compose

## Installation
1. Clone the project on your local machine:
```
git clone https://github.com/BFlorian91/docker-dev-environment
```
2. Navigate to the directory:
```
cd docker-dev-environment
```
3. __IMPORTANT: Do not forget to update the path of the volume bind in the docker-compose.yml file to match your local working directory path.__
## Usage
Start the development environment with the following command: 
```
docker-compose up -d --build
```
Enter the container's shell using the following command: 
```
docker-compose exec neovim fish
```
You can now use NeoVim to work on your local files by accessing the mounted working directory in the container: ```cd /workdir```  
To stop the development environment, use the following command: ```docker-compose down```  
## Customization
You can customize the development environment by modifying the Dockerfile and docker-compose.yml files. You can also add Fish shell aliases in the .config/fish/config.fish file.

## Remarks
- Changes made to the files in the container's working directory will be automatically synchronized with the local working directory thanks to the volume binding.
- Changes made to the Dockerfile and docker-compose.yml files will only take effect after restarting the development environment with the command ```docker-compose up -d --build.```
- The project was built with Alpine.js.
- Do not hesitate to consult the Docker documentation for more information on using Docker and Docker Compose.

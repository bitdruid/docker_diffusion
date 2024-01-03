FROM ubuntu:23.04
RUN apt-get update && apt-get install -y wget unzip curl bzip2 -y
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN wget https://github.com/easydiffusion/easydiffusion/releases/download/v3.0.2/Easy-Diffusion-Linux.zip
RUN unzip Easy-Diffusion-Linux.zip -d /easy-diffusion
WORKDIR /easy-diffusion/easy-diffusion
COPY ./config.yaml ./
CMD ["bash", "start.sh"]
# set base image (host OS)
FROM ubuntu:20.04

ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive

# set the working directory in the container
WORKDIR /vosk_training

# copy the dependencies file to the working directory
COPY requirements.txt  install_kaldi.sh ./
RUN pwd
RUN ls
# install dependencies
RUN chmod +x install_kaldi.sh
RUN ./install_kaldi.sh
RUN pip install -r requirements.txt
RUN ls
WORKDIR /vosk_training/kaldi/tools
#RUN cd /kaldi/tools
RUN extras/install_opengrm.sh
RUN ./install_srilm.sh lolz lorg abc@gmail.com

# copy the content of the local src directory to the working directory
#WORKDIR /vosk_training/vosk-model-en-us-0.22-compile/
#COPY  vosk-model-en-us-0.22-compile .
RUN wget https://alphacephei.com/vosk/models/vosk-model-en-us-0.22-compile.zip
RUN unzip vosk-model-en-us-0.22-compile.zip

# command to run on container start
CMD [ "sh", "-c", "/bin/sh"]


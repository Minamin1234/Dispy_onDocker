FROM debian

RUN apt update
RUN apt install -y python3.9 && apt install -y python3-pip
RUN pip install discord.py
RUN mkdir /home/Apps
COPY ./Apps/ /home/Apps/
ENV DISPY_PATH=/home/Apps/Dispy
ENV DISPY_VOLUME=/home/Apps/Dispy/dispy_volume
CMD python3.9 /home/Apps/Dispy/main.py $DISPY_TOKEN $DISPY_VOLUME
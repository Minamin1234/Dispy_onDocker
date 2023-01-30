FROM debian

RUN apt update
RUN apt install -y python3.9 && apt install -y python3-pip
RUN pip install discord.py
RUN mkdir /home/Apps
COPY ./Apps/ /home/Apps/
CMD python3.9 /home/Apps/Dispy/main.py
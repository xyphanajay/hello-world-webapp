FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y 

RUN mkdir /opt/app
RUN cd /opt/app
           
RUN git clone https://github.com/creepyghost/hello-world-webapp.git

RUN pip install -r requirements.txt
RUN gunicorn app:app
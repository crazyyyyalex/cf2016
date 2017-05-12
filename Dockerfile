FROM phusion/baseimage:0.9.21
MAINTAINER crazyyyyded
EXPOSE 80 8500
VOLUME ["/var/www", "/tmp/config"]

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y wget unzip xsltproc apache2 git
RUN git clone https://github.com/crazyyyyalex/cf2016.git
RUN cd /cf2016
RUN cp /build/install/ /tmp/
RUN cp /build/service/ /etc/service/
RUN cp /build/my_init.d/ /etc/my_init.d/
RUN cd /tmp
RUN wget https://www.dropbox.com/s/1uw3zzcn2etrg7r/ColdFusion_2016_WWEJ_linux64.bin?dl=0
RUN chmod 755 ColdFusion_2016_WWEJ_linux64.bin

RUN /tmp/install-cf2016.sh

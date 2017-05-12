FROM phusion/baseimage:0.9.21
MAINTAINER crazyyyyded
EXPOSE 80 8500
VOLUME ["/var/www", "/tmp/config"]

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y wget unzip xsltproc apache2 git
RUN git clone https://github.com/crazyyyyalex/cf2016.git
RUN cd /cf2016/
RUN cp /build/install/ /tmp/
RUN cp /build/service/ /etc/service/
RUN cp /build/my_init.d/ /etc/my_init.d/
RUN wget  





cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_11_WWEJ_linux64.bin" ]
then
	wget http://trials3.adobe.com/AdobeProducts/CSTD/11/linux64/ColdFusion_11_WWEJ_linux64.bin
	chmod 755 ColdFusion_11_WWEJ_linux64.bin
fi




RUN /tmp/install-cf2016.sh

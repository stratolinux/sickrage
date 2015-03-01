FROM ubuntu:14.04
MAINTAINER Eric Young <eric@stratolinux.com>

# To get rid of error messages like "debconf: unable to initialize frontend: Dialog":
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list
RUN apt-get -q update

RUN apt-get install -qy git python-cheetah unrar python-software-properties software-properties-common

RUN apt-get -qy upgrade

# now install sickrage
ENV SICKDIR /opt/sickrage
RUN git clone git://github.com/echel0n/SickRage.git $SICKDIR

# apt clean
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/* &&\
  rm -rf /var/tmp/*

VOLUME /config
VOLUME /videos

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081


CMD ["/start.sh"]

FROM vidiben/phantomjs
MAINTAINER Benoît Vidis

RUN apt-get update -y
RUN apt-get install -y git python

WORKDIR /root
RUN git clone git://github.com/n1k0/casperjs.git
RUN mv casperjs /opt/
RUN ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs
RUN mkdir /home/casperjs

WORKDIR /home/casperjs

CMD ["casperjs"]

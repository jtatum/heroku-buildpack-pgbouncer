FROM heroku/cedar:14
MAINTAINER jtatum

RUN apt-get -q update
RUN apt-get -q -y install curl gcc g++ make wget unzip

ADD stunnel-build stunnel-build

# CMD ./stunnel-build

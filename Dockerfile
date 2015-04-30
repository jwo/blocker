FROM phusion/passenger-ruby22
RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
RUN bundle install

RUN curl -L https://bit.ly/InspeqtorDEB | bash
RUN apt-get install inspeqtor
ADD docker_config/app/inspeqtor.conf /etc/inspeqtor/inspeqtor.conf

#CMD initctl start inspeqtor && "/sbin/my_init"

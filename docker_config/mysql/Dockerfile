FROM tutum/mysql

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl

RUN apt-get update -qq && apt-get install -y build-essential curl supervisor


##### inspeqtor
RUN curl -L https://bit.ly/InspeqtorDEB | bash
RUN apt-get install inspeqtor
ADD inspeqtor.conf /etc/inspeqtor/inspeqtor.conf
ADD *.inq /etc/inspeqtor/services.d/

RUN mkdir -p /var/log/supervisor /var/log/inspeqtor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

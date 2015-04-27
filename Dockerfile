FROM phusion/passenger-ruby22
RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
RUN bundle install
ADD . /myapp
RUN bundle install
CMD "/sbin/my_init"

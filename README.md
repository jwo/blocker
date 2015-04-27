# Blocker - Sample Rails Blog app, on docker

* Monitoring: Prometheus
* DB: mysql

## Why?

There's good rails tutorials on getting your rails app running in a single
container. however, each time you build it, your database gets wiped out. How
should you get these into production? How can you monitor your database?

We'll use prometheus for monitoring, using its wicked sweet container-exporter
container, which automatically monitors all performance data for each container
in the cluster (my term).

TODO: we'll add inspeqtor to watch services and individual memory behavior.

## Getting Started

1. Digital Ocean, create docker app
2. sign in to new app
3. `apt-get install git`
4. Install [docker-compose](http://docs.docker.com/compose/install/)
4. mkdir /var/blocker
5. cd /var/blocker
6. `git clone https://github.com/jwo/blocker.git .`
6. `docker-compose build`
8. `docker-compose run app rake db:migrate`
7. `docker-compose up`

## Other resources

* docker-compose (previously 'fig') YAML reference
* Getting started with rails/docker

## TODO

* HA proxy, or nginx front end server
* verify get-started docs

## LICENSE: MIT, see LICENSE

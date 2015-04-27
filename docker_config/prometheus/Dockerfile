FROM prom/prometheus
ADD prometheus.conf /etc/prometheus/prometheus.conf
CMD        [ "-logtostderr", "-config.file=/etc/prometheus/prometheus.conf", \
             "-storage.local.path=/prometheus", \
             "-web.console.libraries=/etc/prometheus/console_libraries", \
             "-web.console.templates=/etc/prometheus/consoles" ]

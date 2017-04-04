# Prom Node Exporter

Running prom node exporter as a Systemd service on Ubuntu

## Run Docker Compose

`docker-compose up -d`

## Create symlink

`sudo ln -s /data/prom_node_exporter/node_exporter /usr/bin/node_exporter`

## Using Systemd

### Create Service
Place `node-exporter.service` to */etc/systemd/system*

### Enable service  
`sudo systemctl enable node-exporter.service`

### Start service  
`sudo systemctl start node-exporter`
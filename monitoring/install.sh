#!/bin/bash
mkdir -p $(pwd)/monitoring/prometheus
curl -O $(pwd)/monitoring/prometheus/prometheus.yml https://raw.githubusercontent.com/boris/docker/master/monitoring/prometheus/prometheus.yml
curl -O $(pwd)/monitoring https://raw.githubusercontent.com/boris/docker/master/monitoring/monitoring.yml

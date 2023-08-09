#!/bin/bash
main() {
  mkdir -p $(pwd)/monitoring/prometheus
  cd $(pwd)/monitoring/prometheus
  curl -sO https://raw.githubusercontent.com/boris/docker/master/monitoring/prometheus/prometheus.yml
  cd ..
  curl -sO  https://raw.githubusercontent.com/boris/docker/master/monitoring/monitoring.yml

}
main


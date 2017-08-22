#!/bin/bash
mkdir -p $(pwd)/monitoring/prometheus
curl -O $(pwd)/monitoring/prometheus/prometheus.yml 
curl -O $(pwd)/monitoring 

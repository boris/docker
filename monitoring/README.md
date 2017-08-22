```bash
# Get the code
bash <(curl -s https://raw.githubusercontent.com/boris/docker/master/monitoring/install.sh)
# Create a service
docker stack deploy --compose-file monitoring/monitoring.yml monitoring
```

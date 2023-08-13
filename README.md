# learning-docker

## Commands for Running App #1

```bash

# Build the docker
docker build -t app1 .

# Run the docker built
docker run --rm --name app1 -ti app1 sh -c "sh /app/sample.sh"

# Check exited dockers
docker ps -a

# Other commands to use
docker rm -f <container-name-or-container-id> # remove dead containers

```

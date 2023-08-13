# App-#1

**Demo Sequence**

```bash

# build the docker
cd app-1
docker build -t app1 .

# demonstrate running script inside docker
docker run -ti app1
sh sample.sh
exit

# demonstrate foreground run
docker run -ti app1 sh -c "sh /app/sample.sh"

# show random docker names
docker ps -a

# remove dead containers
docker rm -f <container-name-or-container-id>

# demonstrate background run
docker run -tid app1 sh -c "sh /app/sample.sh"
docker ps -a
docker logs <container-name-or-container-id>

# demonstrate container naming and removals
docker run --name app1 -tid app1 sh -c "sh /app/sample.sh"
docker run --name app1 -tid app1 sh -c "sh /app/sample.sh"
docker ps -a
docker rm -f <container-name-or-container-id>

# remove dead containers upon quitting
docker run --rm --name app1 -ti app1 sh -c "sh /app/sample.sh"

# demonstrate entrypoint
cd app-1
docker build -t app1 .
docker run --rm --name app1 -ti app1

# Cleanup unnecessary docker stuffs
docker system prune

```

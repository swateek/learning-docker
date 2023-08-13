# App-#2

**Running Standalone App**

```bash

cd app-2

# Virtual Env & Installations
python3 -m venv .venv
source .venv/bin/activate
pip3 install --no-cache-dir -r pip-requirements.txt

# Run the server
uvicorn src.main:app --reload --host 0.0.0.0 --port 4000

# Fire requests
curl -X GET --location 'http://localhost:4000/'
curl -X GET --location 'http://localhost:4000/items/1?q=price'

```

**Demo Sequence**

```bash

# run app locally -- see above commands

# build the docker
cd app-2
docker build -t app2 .

# run the docker
docker run --rm -tid --name app2-cntnr -p 4000:80 app2
curl -X GET --location 'http://localhost:4000/'

# stop a running container
docker rm -f app2-cntnr

# demo volume mount
mkdir -p tmp
echo "This was executed outside of the container.. " > ./tmp/stmt.txt
docker run --rm -tid --name app2-cntnr -p 4000:80 -v $(pwd)/tmp:/app/tmp-dir app2
docker exec -ti app2-cntnr bash
ls -la
cat tmp-dir/stmt.txt
echo "But I wrote this from inside the container! " >> ./tmp-dir/stmt.txt
cat tmp-dir/stmt.txt
docker rm -f app2-cntnr
cat tmp/stmt.txt

# multi stage build
cd app-2
docker build -f Dockerfile.multistage -t app2-multistage .
docker images # show size
docker run --rm -tid --name app2-multi -p 4000:80 app2-multistage
curl -X GET --location 'http://localhost:4000/'

# Clean the system
docker system prune -f
```

**References**

1. [FastAPI in Docker](https://fastapi.tiangolo.com/deployment/docker/)

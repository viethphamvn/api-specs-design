# #!/bin/bash

# Run the docker container
docker run -p 127.0.0.1:8181:8000/tcp --rm --name customer-service-rating -t customer-service-rating:latest

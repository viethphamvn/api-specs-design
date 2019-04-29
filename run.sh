# #!/bin/bash

# Run the docker container
docker run -p 8181:8000/tcp -p 9999:9999 --rm --name customer_service_rating -t customer_service_rating:latest

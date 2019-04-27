FROM node:8.16.0-alpine
MAINTAINER VietPham

COPY . /app
WORKDIR /app

RUN apk upgrade --update \
    && apk add --no-cache build-base \
    && apk add bash \
    && apk add make

CMD npm i -g redoc-cli && make docs

# Build:
# docker build -t flight-doc-search:latest .

# Run:
# docker run -p 127.0.0.1:8181:8000/tcp --rm \
#        --name flight-doc-search -t flight-doc-search:latest

# Stop:
# docker stop flight-doc-search

# Debug:
# docker run -it flight-doc-search:latest sh
# or
# docker run -it flight-doc-search:latest bash
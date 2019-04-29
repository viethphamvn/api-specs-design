FROM node:8.16.0-alpine
MAINTAINER VietPham

COPY . /app
WORKDIR /app
EXPOSE 8000 9999

RUN apk upgrade --update \
    && apk add --no-cache build-base \
    && apk add bash \
    && apk add make

CMD npm i -g redoc-cli && make docs && make docs-serve

# Build:
# docker build -t customer_service_rating:latest .

# Run:
# docker run -p 127.0.0.1:8181:8000/tcp --rm \
#        --name customer_service_rating -t customer_service_rating:latest

# Stop:
# docker stop customer_service_rating

# Debug:
# docker run -it customer_service_rating:latest sh
# or
# docker run -it customer_service_rating:latest bash

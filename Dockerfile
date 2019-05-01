FROM node:8.16.0-alpine
LABEL MAINTAINER VietPham

COPY . /app
WORKDIR /app
EXPOSE 8000 9999

RUN apk upgrade --update \
    && apk add --no-cache build-base \
    && apk add bash \
    && apk add make \
    && npm i -g redoc-cli

CMD make docs && make docs-serve

# Build:
# docker build -t customer-service-rating:latest .

# Run:
# docker run -p 127.0.0.1:8181:8000/tcp --rm \
#        --name customer-service-rating -t customer-service-rating:latest

# Stop:
# docker stop customer-service-rating

# Debug:
# docker run -it customer-service-rating:latest sh
# or
# docker run -it customer-service-rating:latest bash
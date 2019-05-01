.PHONY: docs docs-serve docker-build docker-run docker-all
docs:
	redoc-cli bundle -o ./docs/index.html specs/api.yml

docs-serve:
	redoc-cli serve -w -ssr -p 9999 specs/api.yml

docker-build:
	docker build -t customer-service-rating:latest .

docker-run:
	docker run -p 8181:8000/tcp -p 9999:9999 --rm --name customer-service-rating -t customer-service-rating:latest

docker-all : docker-build docker-run
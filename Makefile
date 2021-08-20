PROJECT_NAME=web

build:
	docker build -t ${PROJECT_NAME} .

shell:
	docker run -it --rm -p 3000:3000 -v $(shell pwd):/app --entrypoint=/bin/ash ${PROJECT_NAME}


IMG=phlummox/tw5-debug:v0.1

docker-build:
	docker build -t $(IMG) .

docker-run:
	docker -D run --rm -it \
		--env 'PORT=8080' \
		--network=host \
		--name tw5-debug \
		--workdir /opt/work \
	$(IMG)



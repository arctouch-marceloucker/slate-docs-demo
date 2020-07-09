.PHONY: clean

# Native Commands
dev:
		bundle exec middleman server
build:
		bundle exec middleman build
clean:
		rm -rf ./build


# Docker Commands
docker-build:
		docker build . -t slate
docker-run:
		docker run -d --rm --name slate -p 4567:4567 -v build:/srv/slate/build -v source:/srv/slate/source slate
docker-stop:
		docker stop slate

install_docker-compose:
	sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo rm /usr/bin/docker-compose
	sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker:
	docker build \
		-t notifierman/latex:2021 \
		.
FROM gitpod/workspace-base:latest

COPY /etc/init.d/docker-compose /etc/init.d/docker-compose

ENTRYPOINT service docker-compose start
# Debian image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`, `10`
 - `9`
 - `8`

## Usage

Run the container as a daemon

`docker run -d --privileged --name systemd-debian -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-debian:8`

Enter to the container

`docker exec -it systemd-debian bash`

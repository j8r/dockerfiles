# CentOS image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`, `7`, `8`

## Usage

1. Run the container as a daemon

`docker run -d --name systemd-centos --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-centos`

or if it doesn't work

`docker run -d --name systemd-centos --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-centos`

2. Enter to the container

`docker exec -it systemd-centos sh`

3. Remove the container

`docker rm -f systemd-centos`

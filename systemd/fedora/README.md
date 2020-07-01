# Fedora latest stable image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`

## Usage

1. Run the container as a daemon

`docker run -d --name systemd-fedora --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-fedora`

or if it doesn't work

`docker run -d --name systemd-fedora --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-fedora`

2. Enter to the container

`docker exec -it systemd-fedora sh`

3. Remove the container

`docker rm -f systemd-fedora`

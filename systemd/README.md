# Docker images for running systemd

You can use this images as base containers to run systemd services inside.

## Usage

1. Run the container as a daemon

`docker run -d --name systemd --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/$IMAGE`

or if it doesn't work

`docker run -d --name systemd --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/$IMAGE`

2. Enter to the container

`docker exec -it systemd sh`

3. Remove the container

`docker rm -f systemd`

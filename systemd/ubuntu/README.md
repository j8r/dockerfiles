# Ubuntu image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `24.04`
 - `22.04`
 - `20.04`, `latest`
 - `18.04`
 - `16.04`

## Usage

1. Run the container as a daemon

`docker run -d --name systemd-ubuntu --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-ubuntu`

or if it doesn't work

`docker run -d --name systemd-ubuntu --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-ubuntu`

2. Enter to the container

`docker exec -it systemd-ubuntu sh`

3. Remove the container

`docker rm -f systemd-ubuntu`

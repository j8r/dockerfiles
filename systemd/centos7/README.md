# CentOS image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`, `7`

## Usage

Run the container as a daemon

`docker run -d --privileged --name systemd-centos -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-centos:7`

Enter to the container

`docker exec -it systemd-centos bash`

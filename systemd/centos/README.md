# CentOS image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`, `7`

## Usage

Run the container as a daemon

`docker run -d --name systemd-centos --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-centos`

Enter to the container

`docker exec -it systemd-centos bash`

Remove the container

`docker rm -f systemd-centos`

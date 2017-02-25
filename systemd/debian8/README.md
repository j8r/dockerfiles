# Debian 8 image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Usage

Run the container as a daemon

`docker run -d --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/debian8-systemd`

Enter to the container

`docker exec -it $CONTAINER_ID bash`

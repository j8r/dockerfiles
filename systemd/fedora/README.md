# Fedora latest stable image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`

## Usage

Run the container as a daemon

`docker run -d --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-fedora`

Enter to the container

`docker exec -it $CONTAINER_ID bash`

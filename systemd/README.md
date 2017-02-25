# Docker images for running systemd

You can use this images as base containers to run systemd services inside.

## Usage

Run the container as a daemon

`docker run -d --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/$IMAGE`

Enter to the container

`docker exec -it $CONTAINER_ID bash`

# Fedora latest stable image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags
 - `latest`

## Usage

Run the container as a daemon

`docker run -d --privileged --name systemd-fedora -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/systemd-fedora`

Enter to the container

`docker exec -it systemd-fedora bash`

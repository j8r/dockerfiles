# Docker images for running systemd

You can use this images as base containers to run systemd services inside.

## Usage

1. Run the container as a daemon

`docker run -d --name systemd --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro jrei/$IMAGE`

If you have issues starting the container, such as:

```
Failed to mount tmpfs at /run: Operation not permitted
Failed to mount tmpfs at /run/lock: Operation not permitted
Failed to mount cgroup at /sys/fs/cgroup/systemd: Operation not permitted
[!!!!!!] Failed to mount API filesystems.
Exiting PID 1...
```

Try:
`
 docker run -d --tmpfs /tmp --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup --cgroupns=host  --cap-add SYS_ADMIN  -t jrei/$IMAGE
`
See [this discussion](https://github.com/moby/moby/issues/42275) for background.

2. Enter to the container

`docker exec -it systemd sh`

3. Remove the container

`docker rm -f systemd`

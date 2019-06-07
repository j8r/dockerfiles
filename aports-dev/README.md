# Alpine aports development environment

Brings a ready-to-use development environment to compile Alpine Linux aports

## Usage

To login to the container, we are in a cloned [aports](https://github.com/alpinelinux/aports) directory:

`docker run --rm -it -v $PWD:/aports -w /aports jrei/aports-dev sh`

Compile an aport as `dev`:

```sh
su dev
cd $repository/$package
abuild -rP /tmp
```

See more instructions in the [official wiki](https://wiki.alpinelinux.org/wiki/Creating_an_Alpine_package)

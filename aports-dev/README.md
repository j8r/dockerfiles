# Alpine aports development environment

Brings a ready-to-use development environment to compile Alpine Linux aports

## Usage

To login as dev:

`docker run --rm -it -v $PWD:/aports -w /aports jrei/aports-dev su dev`

Compile an aport:

```sh
cd $repository/$package
abuild -rP /tmp
```

See more instructions in the [official wiki](https://wiki.alpinelinux.org/wiki/Creating_an_Alpine_package)

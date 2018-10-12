# Crystal Alpine image

Image with Crystal installed and its dependencies to build statically linked Crystal applications.

## Usage

To compile an application which is assumed to be`src/app.cr`:

`docker run --rm -it -v $PWD:/app -w /app jrei/crystal-alpine crystal build src/app.cr --static --release --no-debug src/app.cr`

A statically linked `./app` is now present in the current directory

## Issues

If running the compiled binary results to a segfault, try to install `libunwind` and link to it:

```sh
apk add --update libunwind-dev
docker run --rm -it -v $PWD:/app -w /app jrei/crystal-alpine crystal build --static --link-flags -lunwind --release --no-debug src/app.cr
```

 


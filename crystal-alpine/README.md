# Crystal Alpine image

Image with Crystal installed and its dependencies to build statically linked Crystal applications.

## Supported tags

Crystal version / Alpine version

 - `latest`, `edge`
 - `0.29.0`, `v3.10`
 - `0.27.0`, `v3.9`
 - `0.25.0`, `v3.8`

## Usage

Add this hack to your main application file to link statically

`echo 'require "llvm/lib_llvm" require "llvm/enums"' >> src/app.cr`

To compile an application which is assumed to be`src/app.cr`:

`docker run --rm -it -v $PWD:/app -w /app jrei/crystal-alpine crystal build --static --release src/app.cr`

A statically linked `./app` is now present in the current directory

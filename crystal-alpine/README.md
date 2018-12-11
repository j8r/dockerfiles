# Crystal Alpine image

Image with Crystal installed and its dependencies to build statically linked Crystal applications.

## Usage

Add this hack to your main application file to link statically

```sh
cat >> src/app.cr <<EOF
require "llvm/lib_llvm"
require "llvm/enums"
EOF
```

To compile an application which is assumed to be`src/app.cr`:

`docker run --rm -it -v $PWD:/app -w /app jrei/crystal-alpine crystal build --static --release src/app.cr`

A statically linked `./app` is now present in the current directory

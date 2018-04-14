# Crystal Alpine image

Image with Crystal installed and its dependencies to build statically linked Crystal applications.

## Usage

To compile an application which is assumed to be`src/app.cr`:

`docker run --rm -it -v $PWD:/app -w /app jrei/crystal-alpine crystal build src/app.cr --static --release --no-debug -o app`

A statically linked `./app` is now present in the current directory

## Disclaimer

For now based on edge due to missing `.a` archives for some libraries, required for static linking.    
                                                                                                       
`libxml2-dev` hasn't one even on edge

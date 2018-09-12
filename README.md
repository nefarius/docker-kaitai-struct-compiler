A containerized `kaitai-struct-compiler`, with related tools bundled.  
Debian Jessie is used as base image for the balance between size and availability of 3rd party tools.

Features:
- `graphviz`
- `ksc` symlink

## Build Image

```sh
docker build . -t kaitai-struct-compiler
```

## Usage

Since the tools will read and write file to disk, this image work by the user logging into the container (`docker run -it`) and mounting some folder for I/O.

```sh
docker run -it --rm \
	-u $(id -u):$(id -g) \
	-v $(pwd):/pwd \
	kaitai-struct-compiler

# in container
ksc file.ksy -t all

ksc file.ksy -t graphviz
dot -Tpng -o file.png file.dot
```

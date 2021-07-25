# docker-yocto-iotg-builder

[docker-buildenv](https://github.com/anyakichi/docker-buildenv) for
Intel Atom Firmware by Yocto Project.

## How to use

```
$ mkdir iotg-1 && cd $_
$ din anyakichi/yocto-iotg-builder:mr5b04
builder@iotg-1:/build$ extract
builder@iotg-1:/build$ setup
builder@iotg-1:/build/build$ build
```

## Build docker image

```
$ docker build \
    --build-arg base=xenial-warrior \
    --build-arg iotg_yocto_branch=MR5-B-04 \
  -t yocto-iotg-builder:mr5b04 .
```

You can replace `xenial-warrior` with another yocto-builder name and
replace `MR5-B-04` with another branch/tag name. Pre-built docker images
are available from:

- anyakichi/yocto-iotg-builder:<iotg_version>
- ghcr.io/anyakichi/yocto-iotg-builder:<iotg_version>

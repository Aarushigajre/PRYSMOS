# PRSYMOS

Bare-metal AArch64 OS built from scratch and run under QEMU inside an Ubuntu Docker container.

## Build the image

```sh
docker build -t prsymos .
```

## Create the container from image and mount the current project directory
```sh
docker run -d -it -v "$PWD":/os --name prysmosdocker prsymos
```

## Log into the docker container shell
```sh
docker exec -it prysmosdocker bash
```

## Build the kernel

```sh
docker run --rm -v "$PWD":/os prsymos make
```

## Run under QEMU (inside the container)

```sh
docker run --rm -it -v "$PWD":/os prsymos make run
```

Exit QEMU with `Ctrl+A` then `X`.

## Debug (QEMU + GDB)

```sh
docker run --rm -it -v "$PWD":/os prsymos make debug
```

## Clean

```sh
docker run --rm -v "$PWD":/os prsymos make clean
```

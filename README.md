# PRSYMOS

Bare-metal AArch64 OS built from scratch and run under QEMU inside an Ubuntu Docker container.

## Build the image

```sh
docker build -t prsymos .
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

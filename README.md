# JADX on Docker

This project suggests a Dockerfile for the jadx project:
[skylot/jadx](https://github.com/skylot/jadx).

## How to use this Dockerfile?

```bash
sudo docker build https://github.com/loris-intergalactique/jadx-docker.git#main
```

## How to use the image?

```bash
sudo docker run -it -v $(pwd):/data jadx-docker jadx [options] <input files>
```

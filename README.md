# JADX on Docker

This project suggests a Dockerfile for the jadx project:
[skylot/jadx](https://github.com/skylot/jadx).

## How to use this Dockerfile?

```bash
docker build -t jadx:latest https://github.com/loris-intergalactique/jadx-docker.git#main
```

## How to use the image?

```bash
docker run --rm -it -v "$(pwd):/data" jadx:latest jadx -d my-app-jadx-output -e -v my-app.apk
```

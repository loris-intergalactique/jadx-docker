# Build layer
FROM eclipse-temurin:8-jdk-alpine
ARG JADX_VERSION=1.4.5

WORKDIR /opt/jadx
RUN set -eux; \
        \ 
        apk add --no-cache --virtual .deps \
            wget \
            unzip \
        ; \
        \
        wget -O jadx.zip "https://github.com/skylot/jadx/releases/download/v${JADX_VERSION}/jadx-${JADX_VERSION}.zip"; \
        unzip jadx.zip; \
        rm jadx.zip; \
        apk del --no-network .deps; \
        \
        jadx --version

ENV PATH="${PATH}:/opt/jadx/bin:/opt/jadx/lib"
WORKDIR /data

CMD ["jadx"]

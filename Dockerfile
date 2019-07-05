FROM collabora/code:latest
LABEL maintainer="Wim Bonis wb@stylite.de"

RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    curl \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

FROM collabora/code:latest
LABEL maintainer="Wim Bonis wb@stylite.de"

# Switch to root User
USER root

RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    curl \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

# switch back to lool user
#USER lool
USER 101

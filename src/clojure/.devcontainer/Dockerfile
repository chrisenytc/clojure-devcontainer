ARG IMAGE_VARIANT

FROM clojure:${IMAGE_VARIANT}

ARG NODE_VERSION

ENV NODE_VERSION ${NODE_VERSION}

# Install system dependencies
RUN apt-get upgrade && apt-get update && apt-get install -y --no-install-recommends curl wget git tzdata

# Install NVM
RUN mkdir /usr/local/.nvm

RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | NVM_DIR="/usr/local/.nvm" bash

RUN export NVM_DIR=/usr/local/.nvm && \. "$NVM_DIR/nvm.sh" && nvm install "$NODE_VERSION" && nvm use "$NODE_VERSION" && npm install -g eslint

# Set JDK Options
ENV JDK_JAVA_OPTIONS "-XshowSettings:system -XX:+UseContainerSupport -XX:MaxRAMPercentage=85"

ENTRYPOINT ["/bin/bash"]
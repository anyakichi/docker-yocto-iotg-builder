ARG YOCTO_BUILDER_BASE
FROM anyakichi/yocto-builder:${YOCTO_BUILDER_BASE}

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    dblatex \
    docbook-utils \
    libglib2.0-dev \
    libsdl1.2-dev \
    nfs-common \
    patchutils \
    xmlto \
    xsltproc \
    xterm \
    xutils-dev \
    && \
  rm -rf /var/lib/apt/lists/*

ARG IOTG_YOCTO_BRANCH
ENV \
  IOTG_YOCTO_BRANCH=${IOTG_YOCTO_BRANCH:-e3900/master}

COPY extract.*.md /etc/buildenv.d/
COPY setup.*.md /etc/buildenv.d/

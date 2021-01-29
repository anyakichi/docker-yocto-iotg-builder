ARG YOCTO_BUILDER_BASE
FROM anyakichi/yocto-builder:${YOCTO_BUILDER_BASE}

RUN \
  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    dblatex \
    docbook-utils \
    curl \
    libglib2.0-dev \
    libsdl1.2-dev \
    nfs-common \
    patchutils \
    xmlto \
    xsltproc \
    xterm \
    xutils-dev \
  && curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y git-lfs \
  && rm -rf /var/lib/apt/lists/*

ARG IOTG_YOCTO_BRANCH
ENV \
  IOTG_YOCTO_BRANCH=${IOTG_YOCTO_BRANCH:-e3900/master}

COPY buildenv.d/* /etc/buildenv.d/

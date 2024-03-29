ARG base
FROM ghcr.io/anyakichi/yocto-builder:${base}

RUN \
  apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    dblatex \
    docbook-utils \
    git-core \
    libglib2.0-dev \
    libsdl1.2-dev \
    nfs-common \
    patchutils \
    xmlto \
    xsltproc \
    xterm \
    xutils-dev \
  && curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes git-lfs \
  && rm -rf /var/lib/apt/lists/*

COPY buildenv.d/* /etc/buildenv.d/

ARG iotg_yocto_branch
ENV \
  IOTG_YOCTO_BRANCH=${iotg_yocto_branch:-e3900/master}

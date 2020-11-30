Skip setup if setup is already done.

```
$ [[ ! -e yocto_build/oe-init-build-env ]] && return 0
```

Setup yocto build environment.

```
$ source yocto_build/oe-init-build-env yocto_build/build || return 1
```

Create auto.conf for our build environment.

```
$ rm -rf conf/auto.conf
$ [[ "${YOCTO_MACHINE}" ]] && echo "MACHINE = \"${YOCTO_MACHINE}\"" >> conf/auto.conf
$ [[ "${YOCTO_DL_DIR}" ]] && echo 'DL_DIR = "${YOCTO_DL_DIR}"' >> conf/auto.conf
$ [[ "${YOCTO_SSTATE_DIR}" ]] && echo 'SSTATE_DIR = "${YOCTO_SSTATE_DIR}"' >> conf/auto.conf
```

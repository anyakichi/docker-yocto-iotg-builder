Get iotg-yocto-bsp-public.

```
$ git clone -b ${IOTG_YOCTO_BRANCH:-master} \
    https://github.com/01org/iotg-yocto-bsp-public.git
```

Execute setup.sh to obtain requied repositories.

```
$ (cd iotg-yocto-bsp-public && printf "1\\n4\\n" | ./setup.sh)
```

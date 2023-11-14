# docker-image for docToolchain

This image extends the official doctoolchain docker image from https://github.com/docToolchain/docker-image by
- pandoc
- mermaid

## Build Docker image(s)

```bash
docker build -t jb090979/doctoolchain:v1.0.0 .\docker\
```

## how to use

create a bash script within the root of your project like this one:

doctoolchain.sh
```bash
#!/usr/bin/env bash
docker run --rm --entrypoint /bin/bash -it -v %cd%:/project jb090979/doctoolchain:v2.2.1.1 \
-c "doctoolchain . %1 %2 %3 %4 %5 %6 %7 %8 %9 -PmainConfigFile=docToolchain.groovy && exit"
```

## Windows

on windows, the following batch script does the same:

```
docker run --rm --entrypoint /bin/bash -it -v %cd%:/project jb090979/doctoolchain:v2.2.1.1 \
-c "doctoolchain . %1 %2 %3 %4 %5 %6 %7 %8 %9 -PmainConfigFile=docToolchain.groovy && exit"
```
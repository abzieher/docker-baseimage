FROM phusion/baseimage
MAINTAINER Franz Abzieher <franz@abzieher.net>

ENV DEBIAN_FRONTEND noninteractive

# see https://github.com/docker/docker/issues/824#issuecomment-22599990
RUN echo "force-unsafe-io">/etc/dpkg/dpkg.cfg.d/02apt-speedup && \
echo 'Acquire::http {No-Cache=True;};'>/etc/apt/apt.conf.d/02nocache && \
echo '#!/bin/true\n'>/usr/sbin/policy-rc.d && \
chmod +x /usr/sbin/policy-rc.d

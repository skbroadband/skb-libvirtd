FROM kolla/centos-source-nova-libvirt:pike
RUN  touch /tmp/test123
COPY test /tmp/

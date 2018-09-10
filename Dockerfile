FROM kolla/centos-source-nova-libvirt:pike
RUN  mkdir -p /etc/libvirt/hooks
COPY libvirt-hooks/qemu /etc/libvirt/hooks/qemu
COPY rpms-latest/ /opt/rpms/
RUN yum install -y /opt/rpms/*.rpm
COPY pem/gloovir-sample-pem/ /etc/pki/libvirt-spice/
COPY configs/libvirtd.conf /etc/libvirt/libvirtd.conf
COPY configs/qemu.conf /etc/libvirt/qemu.conf
COPY configs/libvirtd /etc/sysconfig/libvirtd
COPY configs/qemu-ldconfig.conf /etc/ld.so.conf.d/qemu-ldconfig.conf
RUN ldconfig && ldd /usr/local/bin/qemu-system-x86_64
RUN mv /usr/libexec/qemu-kvm /usr/libexec/qemu-kvm.bak
RUN ln -s /usr/local/bin/qemu-system-x86_64 /usr/libexec/qemu-kvm
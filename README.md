# skb-libvirtd
## 1. 개요
SKB 에서 커스텀 개발한 Libvirt + QEMU 바이너리를 컨테이너화 하기 위한 자료입니다.  
OpenStack Kolla Project 에서 제공하는 centos-source-nova-libvirt 컨테이너 이미지에, 커스텀 개발한 Libvirt 및 QEMU 바이너리를 추가하여 컨테이너 환경의 OpenStack에서 동작하는 Libvirt Container를 생성합니다.

## 2. 디렉토리 구조
SKB의 custom Libvirtd는 여러개의 디렉토리로 관리가 됩니다.
아래는 디렉토리별 용도 및 내용에 대한 설명입니다. 

### 2.1 rpms-latest
가장 최신 버전의 QEMU rpm + Libvirt rpm 들이 담겨 있는 디렉토리 입니다.  
Dockerfile이 본 디렉토리를 참조하여 Container image 를 생성합니다.

### 2.2 configs
Libvirt 설정에 필요한 conf 파일들이 들어있는 디렉토리 입니다.  
Dockerfile이 본 디렉토리를 참조하여 Container image를 생성합니다.

### 2.3 libvirt
모든 버전의 libvirt rpm package 및 binary가 관리되는 디렉토리 입니다.  

### 2.4 QEMU
모든 버전의 qemu rpm package 들이 관리되는 디렉토리 입니다.

### 2.5 libvirt-hooks
Libvirt Hook이 관리되는 디렉토리 입니다.  
Dockerfile이 본 디렉토리를 참조하여 Container image를 생성합니다.  
아직 Libvirt Hook에는 버전이 부여되지 않은 상태입니다.  

## 3. Docker Hub 링크

https://hub.docker.com/r/skbroadband/skb-libvirtd/

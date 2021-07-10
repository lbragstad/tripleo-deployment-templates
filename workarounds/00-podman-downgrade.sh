dnf -y remove podman
dnf -y module reset container-tools
dnf -y module enable container-tools:3.0
dnf -y install podman

FROM gentoo/stage3:amd64-openrc

RUN emerge-webrsync     \
        && emerge dev-util/pkgcheck app-eselect/eselect-repository      \
        && eselect repository create toku-sa-n      \
        && cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf

COPY . /var/db/repos/toku-sa-n/

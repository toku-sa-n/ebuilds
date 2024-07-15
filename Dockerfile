FROM gentoo/stage3:amd64-openrc

RUN emerge-webrsync     \
        && emerge dev-util/pkgcheck app-eselect/eselect-repository      \
        && eselect repository create toku-sa-n      \
        && cp /usr/share/portage/config/repos.conf /etc/portage/repos.conf/gentoo.conf  \
        && echo "COMMON_FLAGS=\"-O2 -pipe -march=native\"" > /etc/portage/make.conf  \
        && echo "CFLAGS=\"\${COMMON_FLAGS}\"" >> /etc/portage/make.conf  \
        && echo "CXXFLAGS=\"\${COMMON_FLAGS}\"" >> /etc/portage/make.conf  \
        && echo "FCFLAGS=\"\${COMMON_FLAGS}\"" >> /etc/portage/make.conf  \
        && echo "FFLAGS=\"\${COMMON_FLAGS}\"" >> /etc/portage/make.conf  \
        && echo "RUSTFLAGS=\"-C opt-level=2 -C target-cpu=native -C link-args=-Wl,-O1\"" >> /etc/portage/make.conf  \
        && echo "MAKEOPTS=\"-j$(nproc)\"" >> /etc/portage/make.conf  \
        && echo "EMERGE_DEFAULT_OPTS=\"--jobs --load-average=$(($(nproc)*9/10))\"" >> /etc/portage/make.conf  \

COPY . /var/db/repos/toku-sa-n/

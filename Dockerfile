FROM "gentoo/stage3:20231225"

RUN emerge --sync
RUN emerge eselect-repository

RUN eselect repository create toku-sa-n

COPY . /var/db/repos/toku-sa-n

RUN ls -l /var/db/repos/toku-sa-n

ENTRYPOINT [ "emerge" ]

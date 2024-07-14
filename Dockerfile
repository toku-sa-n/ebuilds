FROM gentoo/stage3:amd64-openrc-20240708

RUN emerge-webrsync

COPY . /var/db/repos/local/

CMD ["/bin/bash"]

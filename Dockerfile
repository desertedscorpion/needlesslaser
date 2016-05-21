FROM fedora:23
ENV LUSER="emory"
# COPY install-gcc.sh /opt/needlesslaser/sbin/install-gcc
COPY install-c9sdk.sh /opt/needlesslaser/sbin/install-c9sdk
RUN chmod 0500 /opt/needlesslaser/sbin/*
# RUN time /opt/needlesslaser/sbin/install-gcc
RUN time /opt/needlesslaser/sbin/install-c9sdk
EXPOSE 8181
CMD ["/usr/bin/bash"]

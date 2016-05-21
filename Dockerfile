FROM fedora:23
ENV LUSER="emory"
COPY install-c9sdk.sh /opt/needlesslaser/sbin/install-c9sdk
RUN chmod 0500 /opt/needlesslaser/sbin/*
RUN time /opt/needlesslaser/sbin/install-c9sdk
EXPOSE 8080
CMD ["/usr/bin/bash"]

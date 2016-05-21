FROM fedora:23
ENV LUSER="emory"
COPY install.sh /opt/needlesslaser/install.sh
COPY init.sh /opt/needlesslaser/sbin/init
COPY setup.sh /opt/needlesslaser/bin/setup
COPY run.sh /opt/needlesslaser/bin/run
RUN /usr/bin/bash /opt/needlesslaser/install.sh
ENV LUSER="emory"
EXPOSE 8080
CMD ["/opt/needlesslaser/sbin/init"]

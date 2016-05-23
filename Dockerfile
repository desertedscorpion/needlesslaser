FROM fedora:23
ENV LUSER="emory"
COPY sbin/* /opt/needlesslaser/sbin/
COPY bin/* /opt/needlesslaser/bin/
COPY config /opt/needlesslaser/lib/config
RUN /usr/bin/bash /opt/needlesslaser/sbin/install.sh
VOLUME /opt/needlesslaser/private
EXPOSE 8080
CMD ["/opt/needlesslaser/sbin/init.sh"]

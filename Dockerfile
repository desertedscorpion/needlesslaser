FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
ENV LUSER="emory"
VOLUME /opt/needlesslaser/private
VOLUME /opt/needlesslaser/input
VOLUME /opt/needlesslaser/output
RUN mkdir /opt/needlesslaser/sbin && chmod 0500 /opt/needlesslaser/sbin mkdir /opt/needlesslaser/bin && chmod 0555 /opt/needlesslaser/bin
COPY install.sh /opt/needlesslaser/sbin/install
COPY run.sh /opt/needlesslaser/sbin/run
COPY user.sh /opt/needlesslaser/bin/user
RUN chmod 0500 /opt/needlesslaser/sbin/install /opt/needlesslaser/sbin/run && chmod 0555 /opt/needlesslaser/bin/user && /opt/needlesslaser/sbin/install
EXPOSE 8181
CMD ["/opt/needlesslaser/sbin/run"]

FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
ENV LUSER="emory"
VOLUME /opt/needlesslaser/private
VOLUME /opt/needlesslaser/input
VOLUME /opt/needlesslaser/output
RUN mkdir /opt/needlesslaser/sbin && chmod 0500 /opt/needlesslaser/sbin
COPY install.sh /opt/needlesslaser/sbin/install
COPY run.sh /opt/needlesslaser/sbin/run
RUN chmod 0500 /opt/needlesslaser/sbin/install /opt/needlesslaser/sbin/run && /opt/needlesslaser/sbin/install
EXPOSE 8181
CMD ["/opt/needlesslaser/sbin/run"]

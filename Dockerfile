FROM taf7lwappqystqp4u7wjsqkdc7dquw/easternmoose
VOLUME /opt/needlesslaser/private
VOLUME /opt/needlesslaser/input
VOLUME /opt/needlesslaser/output
RUN mkdir /opt/needlesslaser/sbin && chmod 0500 /opt/needlesslaser/sbin
COPY install.sh /opt/needlesslaser/sbin/install
RUN chmod 0500 /opt/needlesslaser/sbin/install && /opt/needlesslaser/sbin/install
EXPOSE 8181
CMD ["/usr/bin/node" "/opt/needlesslaser/c9sdk/server.js"]

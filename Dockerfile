FROM taf7lwappqystqp4u7wjsqkdc7dquw/needlessbeta
ENV LUSER="emory" KEY_ID="" GIT_NAME="Emory Merryman GIT_EMAIL="emory.merryman@gmail.com" PASS_REPO="" WORK_REPO=""
VOLUME /opt/needlesslaser/private
VOLUME /opt/needlesslaser/input
VOLUME /opt/needlesslaser/output
RUN mkdir /opt/needlesslaser/sbin && chmod 0500 /opt/needlesslaser/sbin && mkdir /opt/needlesslaser/bin && chmod 0555 /opt/needlesslaser/bin
COPY needlesslaser.service /usr/lib/systemd/system
COPY install.sh /opt/needlesslaser/sbin/install
COPY run.sh /opt/needlesslaser/sbin/run
COPY user.sh /opt/needlesslaser/bin/user
COPY post-commit.sh /opt/needlesslaser/bin/post-commit
RUN chmod 0500 /opt/needlesslaser/sbin/* && chmod 0555 /opt/needlesslaser/bin/* /opt/needlesslaser/sbin/install && /opt/needlesslaser/sbin/install
EXPOSE 8181
CMD ["/usr/sbin/init"]

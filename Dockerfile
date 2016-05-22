FROM fedora:23
ENV LUSER="emory"
COPY install.sh /opt/needlesslaser/install.sh
COPY init.sh /opt/needlesslaser/sbin/init
COPY setup.sh /opt/needlesslaser/bin/setup
COPY run.sh /opt/needlesslaser/bin/run
COPY config /opt/needlesslaser/lib/config
RUN /usr/bin/bash /opt/needlesslaser/install.sh
VOLUME /opt/needlesslaser/private
ENV LUSER="emory" GIT_EMAIL="emory.merryman@deciphernow.com" GIT_NAME="Emory Merryman" GIT_URL="git@github.com:desertedscorpion/needlesslaser.git" GIT_BRANCH_PARENT="master" GIT_BRANCH_CHILD=""
EXPOSE 8080
EXPOSE 8443
EXPOSE 9443
CMD ["/opt/needlesslaser/sbin/init"]

FROM fedora:23
ENV LUSER="emory"
COPY install.sh /opt/needlesslaser/install.sh
COPY bin/* /opt/needlesslaser/bin
COPY sbin/* /opt/needlesslaser/bin
RUN /usr/bin/bash /opt/needlesslaser/install.sh
VOLUME /opt/needlesslaser/private
ENV LUSER="emory" GIT_EMAIL="emory.merryman@deciphernow.com" GIT_NAME="Emory Merryman" GIT_URL="git@github.com:desertedscorpion/needlesslaser.git" GIT_BRANCH_PARENT="master" GIT_BRANCH_CHILD="" GPG_KEY_ID="2D2D81DA" PASS_GIT_URL="git@github.com:AFnRFCb7/lanterngold.git" LDAP_USERNAME="emory.merryman" LDAP_PASSWORD="" LDAP_EMAIL="emory.merryman@deciphernow.com"
EXPOSE 8080
CMD ["/opt/needlesslaser/sbin/init"]

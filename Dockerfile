FROM fedora:23
ENV LUSER="emory"
COPY install.sh /opt/needlesslaser/install.sh
COPY init.sh /opt/needlesslaser/sbin/init
COPY setup.sh /opt/needlesslaser/bin/setup
COPY run.sh /opt/needlesslaser/bin/run
COPY config /opt/needlesslaser/lib/config
COPY post-commit.sh /opt/needlesslaser/bin/post-commit
COPY rebase.sh /opt/needlesslaser/bin/rebase
COPY new-branch.sh /opt/needlesslaser/bin/new-branch
RUN /usr/bin/bash /opt/needlesslaser/install.sh
VOLUME /opt/needlesslaser/private
ENV LUSER="emory" GIT_EMAIL="emory.merryman@deciphernow.com" GIT_NAME="Emory Merryman" GIT_URL="git@github.com:desertedscorpion/needlesslaser.git" GIT_BRANCH_PARENT="master" GIT_BRANCH_CHILD="" GPG_KEY_ID="2D2D81DA" PASS_GIT_REPO="git@github.com:AFnRFCb7/lanterngold.git" LDAP_USERNAME="emory.merryman" LDAP_PASSWORD="" LDAP_EMAIL="emory.merryman@deciphernow.com"
EXPOSE 8080
CMD ["/opt/needlesslaser/sbin/init"]

FROM debian:jessie

ENV COUCH_POTATO_DIR /opt/couchpotato

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN mkdir -p /etc/default && \
    touch /etc/default/couchpotato

RUN apt update && \
    apt install -y -q --no-install-recommends \
      ca-certificates git-core python2.7 && \
    mkdir -p /opt && \
    git clone https://github.com/CouchPotato/CouchPotatoServer.git ${COUCH_POTATO_DIR}

CMD python2.7 ${COUCH_POTATO_DIR}/CouchPotato.py

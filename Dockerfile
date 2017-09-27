FROM jenkins/jnlp-slave

USER root

ENV PYTHON_VERSION 3.5

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get -y install python${PYTHON_VERSION} \
       python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && ln -nsf /usr/bin/python3.5 /usr/bin/python

USER jenkins

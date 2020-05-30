FROM ubuntu:16.04

RUN apt-get update \
 && apt-get install -y \
        python3-flask \
        python3-lxml \
        python3-roman \
        w3c-sgml-lib \
        dwdiff \
        python3-cssselect \
        python3-pip \
        git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip3 install flask-wtf tinycss
RUN git clone https://github.com/tangledhelix/pptools-openshift.git /pptools

WORKDIR /pptools/wsgi

ENTRYPOINT ["./pptools.py"]

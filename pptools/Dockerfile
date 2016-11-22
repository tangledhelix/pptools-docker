FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y python3-flask python3-lxml python3-roman w3c-sgml-lib dwdiff python3-cssselect python3-pip
RUN pip3 install flask-wtf tinycss

COPY pptools-openshift /pptools
WORKDIR /pptools/wsgi

CMD ["./pptools.py"]

FROM alpine:3.19.1

LABEL author="Lim Xing Kang Norman<frenoid@gmail.com>"
LABEL repository="https://github.com/frenoid/ocp-etcd-backup"

COPY oc-4.11.13-linux.tar.gz .

RUN tar xvf oc-4.11.13-linux.tar.gz

RUN cp ./oc /usr/local/bin/oc

RUN rm oc-4.11.13-linux.tar.gz

RUN apk update

# Needed to run the oc binary
RUN apk add gcompat==1.1.0-r4

RUN apk add aws-cli==2.13.25-r0

RUN rm -rf /var/cache/apk/*

# 

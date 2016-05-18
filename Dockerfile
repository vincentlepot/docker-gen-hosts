FROM alpine

RUN apk add --update bash && rm -rf /var/cache/apk/*

ADD ./docker-gen /docker-gen
ADD ./script.sh /script.sh
ADD ./hostfile.tmpl /hostfile.tmpl
RUN chmod a+x /script.sh

VOLUME /generated_hostfile

CMD ["/docker-gen", "-notify=/script.sh", "-watch", "/hostfile.tmpl", "/hostfile"]

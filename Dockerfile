FROM okteto/bin:1.1.10-cloud as okteto

FROM alpine:3 as build

RUN apk add go git
RUN mkdir -p /tmp/gotty 
RUN GOPATH=/tmp/gotty go get github.com/yudai/gotty 
RUN mv /tmp/gotty/bin/gotty /usr/local/bin/ 

FROM alpine:3

COPY --from=build /usr/local/bin/gotty /usr/local/bin/gotty
COPY --from=okteto /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=okteto /usr/local/bin/okteto /usr/local/bin/okteto
COPY --from=okteto /usr/local/bin/helm /usr/local/bin/helm

ENV GOTTY_CREDENTIAL "hello:world"
ENV HOME /okteto
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/gotty"]
CMD ["--permit-write","--reconnect","/bin/sh"]
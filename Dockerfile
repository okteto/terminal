FROM okteto/cloudbin:1.8.39 as okteto

FROM alpine:3 as build

RUN apk add go git
RUN mkdir -p /tmp/gotty 
RUN GOPATH=/tmp/gotty go get github.com/yudai/gotty 
RUN mv /tmp/gotty/bin/gotty /usr/local/bin/ 

FROM alpine:3

RUN apk add --no-cache bash curl iputils
COPY bashrc /root/.bashrc
COPY bash_aliases /root/.bash_aliases

COPY --from=build /usr/local/bin/gotty /usr/local/bin/gotty
COPY --from=okteto /usr/local/bin/kubectl /usr/local/bin/kubectl
COPY --from=okteto /usr/local/bin/okteto /usr/local/bin/okteto
COPY --from=okteto /usr/local/bin/helm /usr/local/bin/helm

ENV HOME /root
EXPOSE 8080
CMD ["sh", "-c", "/usr/local/bin/gotty --permit-write --reconnect /bin/bash"]

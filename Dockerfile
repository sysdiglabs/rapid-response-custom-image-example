FROM quay.io/sysdig/rapid-response-host-component:latest AS base-image

FROM alpine:3.13
COPY --from=base-image /usr/bin/host /usr/bin/host

RUN apk update && \
    apk add curl && \
    rm -rf /var/cache/apk/*

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT ["host"]

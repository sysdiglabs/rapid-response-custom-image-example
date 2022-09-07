FROM quay.io/sysdig/rapid-response-host-component:latest AS base-image

FROM alpine:3.13
COPY --from=base-image /usr/bin/host /usr/bin/host

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mkdir -p ~/.local/bin && \
    mv ./kubectl ~/.local/bin/kubectl

ENTRYPOINT ["host"]


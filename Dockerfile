FROM ubuntu:18.04
RUN apt update && apt install -qq -y curl git && apt autoremove && apt clean
WORKDIR /root/
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
CMD sleep 600

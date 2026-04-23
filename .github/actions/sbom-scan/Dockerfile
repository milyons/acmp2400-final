FROM alpine:3.18

RUN apk add --no-cache curl bash

# install syft (SBOM generator)
RUN curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh

# install grype (vulnerability scanner)
RUN curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

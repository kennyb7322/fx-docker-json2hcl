FROM alpine:latest as BUILDER

ENV JSON2HCL_VERSION=0.0.6

ADD https://github.com/kvz/json2hcl/releases/download/v${JSON2HCL_VERSION}/json2hcl_v${JSON2HCL_VERSION}_linux_amd64 /json2hcl

RUN chmod +x /json2hcl

FROM scratch

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

COPY --from=BUILDER /json2hcl /json2hcl

ENTRYPOINT ["/json2hcl"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="json2hcl" \
      "org.label-schema.base-image.name"="scratch" \
      "org.label-schema.base-image.version"="latest" \
      "org.label-schema.description"="json2hcl in a container" \
      "org.label-schema.url"="https://github.com/kvz/json2hcl" \
      "org.label-schema.vcs-url"="https://bitbucket.org/fxadmin/public-common-docker-json2hcl" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.json2hcl.version"=$JSON2HCL_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run --rm -i fxinnovation/json2hcl:[TAG] -version"

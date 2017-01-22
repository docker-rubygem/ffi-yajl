FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.1

RUN gem install ffi-yajl --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ffi-yajl-bench"]
CMD ["--help"]

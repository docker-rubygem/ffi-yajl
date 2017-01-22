FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.3.1

RUN gem install ffi-yajl --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ffi-yajl-bench"]
CMD ["--help"]

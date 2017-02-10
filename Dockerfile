FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.6.2

RUN gem install edi4r --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["editool.rb"]
CMD ["--help"]

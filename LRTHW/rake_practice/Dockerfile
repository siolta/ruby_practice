FROM ruby:2.7.1-slim-buster

WORKDIR ./avdi_rake

RUN apt-get update && \
  apt-get -y install --no-install-recommends \
  pandoc \
  && rm -rf /var/lib/apt/lists/*

COPY md/ .
COPY Rakefile .

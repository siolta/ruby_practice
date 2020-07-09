FROM ruby:2.7.1-slim-buster

RUN apt-get update && \
  apt-get -y install --no-install-recommends \
  pandoc \
  && rm -rf /var/lib/apt/lists/*

COPY Rakefile .

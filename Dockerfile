FROM ruby:3.1
WORKDIR /work
# dependencies
RUN \
  apt-get update && \
  apt-get -y install \
  build-essential \
  curl \
  git-core \
  libcurl4-openssl-dev \
  libc6-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev \
  libssl-dev \
  imagemagick \
  sqlite3 \
  libsqlite3-dev

RUN gem install bundler
RUN gem install rails

COPY ./ /work

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]


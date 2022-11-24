FROM ruby:2.7.0

ENV BUNDLER_VERSION=2.0.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

#RUN apk add --update --no-cache \
#      binutils-gold \
#      build-base \
#      curl \
#      file \
#      g++ \
#      gcc \
#      git \
#      less \
#      libstdc++ \
#      libffi-dev \
#      libc-dev \
#      linux-headers \
#      libxml2-dev \
#      libxslt-dev \
#      libgcrypt-dev \
#      make \
#      netcat-openbsd \
#      nodejs \
#      openssl \
#      pkgconfig \
#      postgresql-dev \
#      python \
#      tzdata \
#      yarn

RUN gem install bundler -v 2.0.2

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle config build.nokogiri --use-system-libraries

#ADD Gemfile /noteapp/Gemfile
#ADD Gemfile.lock /noteapp/Gemfile.lock
RUN bundle install
#RUN bin/rails db:create
#RUN bin/rails db:migrate
#RUN apt-get install yarn
#RUN yarn install --check-files
#COPY package.json yarn.lock ./



COPY . ./

ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]
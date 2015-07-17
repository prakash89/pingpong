FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ADD . /Documents/workspace/pinpong
WORKDIR /Documents/workspace/pinpong
ADD Gemfile /Documents/workspace/pinpong/Gemfile
RUN bundle install
ADD . /Documents/workspace/pinpong
FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ADD . ~/pinpong
WORKDIR ~/pinpong
ADD Gemfile ~/pinpong/Gemfile
RUN bundle install
ADD . ~/pinpong

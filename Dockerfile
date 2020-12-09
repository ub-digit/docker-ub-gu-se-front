FROM ruby:2.5
RUN apt-get update -qq && \
    apt-get install -y nodejs nano build-essential libpq-dev && \
    gem install bundler
RUN mkdir /project
COPY Gemfile Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY . /project
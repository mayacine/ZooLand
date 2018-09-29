FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick
RUN mkdir /ZooLand
WORKDIR /ZooLand
ADD Gemfile /ZooLand/Gemfile
ADD Gemfile.lock /ZooLand/Gemfile.lock
RUN bundle install
ADD . /ZooLand
FROM ruby:2.1-onbuild
RUN apt-get update -qq && apt-get install -y libpq-dev

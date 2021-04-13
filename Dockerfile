FROM ruby:3.0.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /vehiculos
COPY Gemfile /vehiculos/Gemfile
COPY Gemfile.lock /vehiculos/Gemfile.lock
RUN bundle install
COPY . /vehiculos


COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 4000


CMD ["rails", "server", "-b", "0.0.0.0"]
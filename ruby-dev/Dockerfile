FROM boris/ruby:2.2.0

MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN apt-get update && apt-get install -q -y \
  build-essential \
  nodejs

RUN mkdir -p /app
WORKDIR /app

#COPY Gemfile Gemfile.lock ./
#RUN gem install bundler && bundle install

COPY . ./

EXPOSE 9292

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

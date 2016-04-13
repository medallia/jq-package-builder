FROM ruby:2.3.0

ADD build.bash /app/build.bash

RUN \
apt-get update; \
apt-get install -y rpm wget; \
apt-get clean && apt-get autoclean; \
gem install fpm; \
chmod +x /app/build.bash

WORKDIR /app

CMD "/app/build.bash"

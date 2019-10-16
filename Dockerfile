FROM google/dart:2.6-dev

ENV APP_ROOT /usr/src/app/

WORKDIR ${APP_ROOT}

ADD pubspec.* ${APP_ROOT}
RUN pub get
ADD . ${APP_ROOT}}
RUN pub get --offline

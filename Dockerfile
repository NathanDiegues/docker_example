FROM elixir:1.13.3-slim

ARG MIX_ENV

ENV MIX_ENV ${MIX_ENV}

RUN apt-get update
RUN apt-get install -y inotify-tools
RUN apt-get install -y nodejs
RUN apt-get install -y curl
RUN curl -L https://npmjs.org/install.sh | sh
RUN mix local.hex --force
RUN mix archive.install hex phx_new 1.5.3 --force
RUN mix local.rebar --force

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY . .

ENTRYPOINT [ "/bin/sh", "-c", "_build/$MIX_ENV/rel/projeto_docker/bin/projeto_docker start" ]
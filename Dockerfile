FROM ruby:3.3.5-slim-bookworm

RUN apt update && \
    apt install -y \
    g++ \
    make 

COPY ./app /app
WORKDIR /app
RUN bundle install

COPY ./entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
ENTRYPOINT [ "/entrypoint" ]

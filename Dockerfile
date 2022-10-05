FROM livebook/livebook

ENV MIX_ENV=dev
COPY . /data/

WORKDIR /data

CMD [ "/app/bin/livebook", "start", "/data/start.livemd" ]

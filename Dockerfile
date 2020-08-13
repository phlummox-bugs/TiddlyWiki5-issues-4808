
FROM node:14.5.0-stretch

RUN \
  npm install -g tiddlywiki@5.1.22
  
RUN \
  mkdir /opt/work

WORKDIR /opt/work

RUN tiddlywiki wiki --init server

ENTRYPOINT ["tiddlywiki", "/opt/work/wiki",     \
  "--listen", "host=0.0.0.0", "port=$PORT",     \
  "root-tiddler=$:/core/save/all-external-js"]


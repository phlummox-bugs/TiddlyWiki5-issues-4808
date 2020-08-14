#!/usr/bin/env bash

set -ex

tiddlywiki /opt/work/wiki \
  --listen host=0.0.0.0 port=$PORT \
  debug-level=debug \
  'root-tiddler=$:/core/save/all-external-js'


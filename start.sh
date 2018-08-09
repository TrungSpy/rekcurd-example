#!/usr/bin/env bash

ECHO_PREFIX="[drucker example]: "

set -e
set -u

echo "$ECHO_PREFIX Start.."

pip install -r ./drucker-grpc-proto/requirements.txt
sh ./drucker-grpc-proto/run_codegen.sh

pip install -r ./drucker/requirements.txt

pip install -r requirements.txt
python sample_model_build.py
python server.py

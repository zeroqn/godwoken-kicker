#!/bin/bash

source ../gw_util.sh

codehash=$(get_sudt_code_hash_from_lumos_file "../godwoken-examples/packages/runner/configs/lumos-config.json")

echo $codehash
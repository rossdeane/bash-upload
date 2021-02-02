#!/bin/bash
S3_BUCKET_NAME="share.ross.lol"
BASE_URL="http://share.ross.lol"
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
filename=$(basename -- "$1")
extension="${filename##*.}"
s3cmd put "$1" s3://$S3_BUCKET_NAME/$NEW_UUID.$extension >/dev/null 2>&1
echo "$BASE_URL/$NEW_UUID.$extension"

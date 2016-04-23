#!/usr/bin/env sh

ENVIRONMENT=$1
NEW_VERSION=$2
EXISTING_VERSION=`cat $ENVIRONMENT.txt`

changed_files=($(git diff --name-only $EXISTING_VERSION $NEW_VERSION))

for change in $changed_files; do
  echo $change
done



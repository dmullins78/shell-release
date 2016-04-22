#!/usr/bin/env sh

. ./semver.sh  

MAJOR=0  
MINOR=0  
PATCH=0  
SPECIAL=""

semverParseInto `cat prod.txt` MAJOR MINOR PATCH SPECIAL  

EXISTING_VERSION="$MAJOR.$MINOR.$PATCH"
NEW_VERSION="$MAJOR.$MINOR.$((PATCH+1))"

git diff --name-only ibs-3.0.7 ibs-3.0.9

#echo "MINOR $NEW_VERSION"
#echo "$NEW_VERSION" > prod.txt

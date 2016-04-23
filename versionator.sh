#!/usr/bin/env sh

. ./semver.sh  

MAJOR=0  
MINOR=0  
PATCH=0  
SPECIAL=""
ENVIRONMENT=$1

semverParseInto `cat $ENVIRONMENT.txt` MAJOR MINOR PATCH SPECIAL  

EXISTING_VERSION="$MAJOR.$MINOR.$PATCH"
NEW_VERSION="$MAJOR.$MINOR.$((PATCH+1))"

echo "$NEW_VERSION" > "$ENVIRONMENT.txt"

git add "$ENVIRONMENT.txt"
git commit -m "Tagging version $NEW_VERSION"
git tag -a "$NEW_VERSION" -m "Tagging version $NEW_VERSION"
git push --tags

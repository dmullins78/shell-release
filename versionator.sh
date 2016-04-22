#!/usr/bin/env sh

. ./semver.sh  

MAJOR=0  
MINOR=0  
PATCH=0  
SPECIAL=""

semverParseInto `cat prod.txt` MAJOR MINOR PATCH SPECIAL  

EXISTING_VERSION="$MAJOR.$MINOR.$PATCH"
NEW_VERSION="$MAJOR.$MINOR.$((PATCH+1))"

echo "$NEW_VERSION" > prod.txt

git add prod.txt
git commit -m "Tagging version $NEW_VERSION"
git tag -a "$NEW_VERSION" -m "Tagging version $NEW_VERSION"
git push --tags

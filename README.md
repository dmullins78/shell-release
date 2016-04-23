# Versionator
Simple scripts to tag, version, and create release packages of files

## Tagging
This script tags the whole repo and incremnts the patch version by 1

`./versionator.sh prod`

## Releasing
Lists the changes between the desired tag and the latest deployed version from the prod/test txt file

`./releaser.sh prod 1.0.13`

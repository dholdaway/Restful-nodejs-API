#!/bin/sh

set -e
set -x
#this is a comment
for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f2)
do
				    npm -g install "$package"
		done
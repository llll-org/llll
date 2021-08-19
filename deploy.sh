#!/bin/bash

# This script needs appropriate permissions to be executable. 
# Set them with: chmod +x ./deploy.sh

rsync \
	--archive \
	--compress \
	--verbose \
	--progress \
	--exclude-from=".rsync-exclude" \
	--delete-excluded \
	--filter="P tools/" \
	./dist/ llll:~/public_html/llll.ro

# Note: the `llll` SSH host is defined in the `~/.ssh/config` file.

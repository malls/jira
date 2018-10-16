#!/bin/bash

for opener in xdg-open open cygstart "start"; {
 	if command -v $opener; then
    	open=$opener;
    	break;
  	fi
}

base_url='https://compa55.atlassian.net/browse/'
branch=$(command git rev-parse --abbrev-ref HEAD)
full_url=${base_url}${branch}

if [ $branch == 'master' ] || [ $branch == 'live' ]; then
	$open $base_url
else 
	$open $full_url
fi

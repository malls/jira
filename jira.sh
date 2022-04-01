#!/bin/bash

for opener in xdg-open open cygstart "start"; {
 	if command -v $opener; then
    	open=$opener;
    	break;
  	fi
}

protocol='https://';
base_url='.atlassian.net/browse/';
branch=$(command git rev-parse --abbrev-ref HEAD);

# See if branch has a number in it. If so, we assume it's a ticket
if echo "${branch}" | grep '[0-9]' >/dev/null; then
	ticket=$branch
fi

# Set JIRA_DOMAIN as env var, see README.md
full_url=${protocol}${JIRA_DOMAIN}${base_url}${ticket};

$open $full_url;

Browser opener for tickets in Jira. If your branch name either matches or is prefixed with your ticket name, `jira` in your terminal will open the ticket in your browser.

In your `.zshrc` or whereever, set an environment variable `export JIRA_DOMAIN="whateversubdomain"`.

Then install like:

`$ chmod +x jira.sh && cp jira.sh /usr/local/bin/jira`

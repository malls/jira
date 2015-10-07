
base_url='https://businessinsider.atlassian.net/browse/'

echo $base_url

branch=$(command git rev-parse --abbrev-ref HEAD)

echo $branch

full_url=${base_url}${branch}

for opener in xdg-open open cygstart "start"; {
  if command -v $opener; then
    open=$opener;
    break;
  fi
}

$open $full_url
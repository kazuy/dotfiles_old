# rbenv PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# git
export PATH="/usr/local/Cellar/git/2.20.1/bin:$PATH"

# goenv PATH
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Secret
export WORDPRESS_MYSQL_PASSWORD=Mp0iKE{wOx7D

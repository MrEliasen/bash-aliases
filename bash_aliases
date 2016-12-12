# Use at your own risk

# Utility aliases
alias lsa="ls -lA"
alias cd..="cd .."
alias o-host="sudo vim /etc/hosts"

# Helpful bits
alias myip="curl http://ipecho.net/plain; echo"

# Git aliases
alias gpush="git push origin master"
alias ga="git add ."
gc() {
    git commit -m "$1"
}

# Apache
alias o-vhost="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias o-httpd="sudo vim /private/etc/apache2/httpd.conf"
apache() {
    sudo apachectl -k $1
}
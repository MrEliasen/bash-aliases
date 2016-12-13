# Use at your own risk

# Utility aliases
alias lsa="ls -lA"
alias cd..="cd .."
alias o-hosts="sudo vim /etc/hosts"

# Helpful bits
alias myip="curl http://ipecho.net/plain; echo"
alias temp="macstats" # Needs: npm i macstats -g

# Git aliases
alias gpush="git push origin master"
alias ga="git add ."
gc() {
    git commit -m "$1"
}

# Apache & PHP
alias o-php="sudo vim /private/etc/php.ini"
alias o-vhost="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias o-httpd="sudo vim /private/etc/apache2/httpd.conf"
alias a-rs="sudo apachectl restart"
alias a-sp="sudo apachectl stop"
alias a-st="sudo apachectl start"
alias a-ct="sudo apachectl configtest"
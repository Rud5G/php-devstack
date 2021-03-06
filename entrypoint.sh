#!/usr/bin/env bash

set -e

CREATE_CRON=/var/www/create.cron
CREATE_DIRS=/var/www/create.dirs
CREATE_WRITABLE=/var/www/create.writable



# Empty apache2 logs directory
if [ -d /var/log/apache2 ]; then
    echo "cleanup apache2 logs"
    rm -rf /var/log/apache2/*.log
fi

# Empty supervisor logs directory
if [ -d /var/log/supervisor ]; then
    echo "cleanup supervisord logs"
    rm -rf /var/log/supervisor/*.log
fi

# Create directories
if [ -f "$CREATE_DIRS" ]; then
    echo "create directories"
    while read dir; do
        if [ $dir != "" ]; then
            mkdir -p "$dir"
        fi
    done <"$CREATE_DIRS"
fi

# Make writable
if [ -f "$CREATE_WRITABLE" ]; then
    echo "create writable"
    while read writable; do
        if [ $writable != "" ]; then
            touch "$writable"
            chmod 0777 "$writable"
        fi
    done <"$CREATE_WRITABLE"
fi


composer config -g "github-oauth.github.com" "$GITHUB_OAUTH"
composer config -g "http-basic.repo.magento.com" "$MAGENTO_REPO_BASIC_AUTH_USER" "$MAGENTO_REPO_BASIC_AUTH_PASS"



if [ -f "$CREATE_CRON" ]; then
    echo "create cron"
    crontab $CREATE_CRON
fi


# Start services
echo "Start phpstack"

/usr/bin/supervisord -c /etc/supervisor/supervisord.conf

# php-devstack

## docker name (prob.)

```sh
name: phpstack_web_1
```

```sh
cp .env.dist .env
```

## (Re-)Build

```sh
sudo docker-compose build
```

```sh
sudo docker-compose up
```


$ mysql -u -h -p

### TODO

    ./var/composer_home/auth.json
    
    $ cp /var/www/toranproxy/certs/*Root_CA.crt /usr/local/share/ca-certificates/
    
    $ update-ca-certificates


    $ TORAN_INSTALL_DIR=/var/www/toranproxy
    
    $ echo '{}' > $TORAN_INSTALL_DIR/app/toran/composer/auth.json

    $ composer config --file=$TORAN_INSTALL_DIR/app/toran/composer/auth.json "github-oauth.github.com" "$GITHUB_OAUTH"

    $ composer config --file=$TORAN_INSTALL_DIR/app/toran/composer/auth.json "http-basic.repo.magento.com" "$MAGENTO_REPO_BASIC_AUTH_USER" "$MAGENTO_REPO_BASIC_AUTH_PASS"

### not sure

    $ wget https://gist.githubusercontent.com/Rud5G/2947522/raw/26ba859616dd7fb65b95d95ba58f143d4236ba7f/ll.sh && mv ll.sh /bin/ll && chmod +x /bin/ll

    $ find var vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
    
    $ find var vendor pub/static pub/media app/etc -type d -exec chmod g+w {} \;

    $ chown -R :www-data var vendor pub/static pub/media app/etc


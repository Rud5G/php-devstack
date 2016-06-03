# php-devstack


```sh
name: phpstack_web_1
```


```sh
composer config -g "github-oauth.github.com" "$GITHUB_OAUTH"
```

```sh
composer config -g "http-basic.repo.magento.com" "$MAGENTO_REPO_BASIC_AUTH_USER" "$MAGENTO_REPO_BASIC_AUTH_PASS"
```






## (Re-)Build new image

```sh
sudo rm -rf logs/*/* && sudo docker build -t dkrud5g/php-devstack .
```






## (Re-)Build

```sh
sudo rm -rf logs/*/* && sudo docker-compose build
```

```sh
sudo docker-compose up
```


./var/composer_home/auth.json

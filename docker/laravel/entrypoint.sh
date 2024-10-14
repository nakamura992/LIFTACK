#!/bin/bash
set -e

# ディレクトリが存在する場合のみ権限を設定
if [ -d "/var/www/html" ]; then
    # Composerの依存関係をインストール
    if [ -f "/var/www/html/composer.json" ]; then
        composer install --no-interaction --no-plugins --no-scripts --prefer-dist
    fi

    chown -R www-data:www-data /var/www/html
    find /var/www/html -type d -exec chmod 755 {} \;
    find /var/www/html -type f -exec chmod 644 {} \;

    if [ -d "/var/www/html/storage" ]; then
        chmod -R 775 /var/www/html/storage
    fi

    if [ -d "/var/www/html/bootstrap/cache" ]; then
        chmod -R 775 /var/www/html/bootstrap/cache
    fi

    if [ -f "/var/www/html/artisan" ]; then
        chmod 755 /var/www/html/artisan
    fi
fi

# www-dataユーザーに切り替え
exec gosu www-data "$@"

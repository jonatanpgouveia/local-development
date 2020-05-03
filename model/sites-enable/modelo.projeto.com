server {
    listen   80;
    listen   [::]:80;

    root /var/www/modelo/htdocs;
    index index.php index.html index.htm;

    server_name modelo.projeto.com;

    sendfile off;

    # Security - Hide nginx version number in error pages and Server header
    server_tokens off;

    # Add stdout logging
    error_log /dev/stdout info;
    access_log /dev/stdout;

    include common/php.conf;
    include common/locations.conf;
    include common/wpcommon.conf;
}
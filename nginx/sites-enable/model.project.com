server {
    listen   80; ## listen for ipv4; this line is default and implied
    #listen   [::]:80 default ipv6only=on; ## listen for ipv6

    root /var/www/model.project.com/htdocs;
    index index.php index.html index.htm;

    server_name model.project.com;
    
    include common/php.conf;
    include common/locations.conf;
    include common/wpcommon.conf;
}
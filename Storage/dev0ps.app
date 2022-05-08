server {

        root /var/www/dev0ps.app/html;
        index index.html index.htm index.nginx-debian.html;

        server_name dev0ps.app www.dev0ps.app;

        location / {
                try_files $uri $uri/ =404;
        }

    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dev0ps.app/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dev0ps.app/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}

server {
    if ($host = dev0ps.app) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


        listen 80;
        listen [::]:80;

        server_name dev0ps.app www.dev0ps.app;
    return 404; # managed by Certbot


}
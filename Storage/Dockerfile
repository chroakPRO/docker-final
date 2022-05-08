FROM nginx:latest

RUN MKDIR -p /etc/nginx/sites-available/

COPY dev0ps.app /etc/nginx/sites-available/dev0ps.app
COPY nginx.conf /etc/nginx/nginx.conf

RUN ln -s /etc/nginx/sites-available/dev0ps.app /etc/nginx/sites-enabled/dev0ps.app
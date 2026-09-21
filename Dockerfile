FROM nginx:alpine
RUN printf 'server {\n  listen 80;\n  charset utf-8;\n  source_charset utf-8;\n  charset_types text/html text/css application/javascript;\n  location / {\n    root /usr/share/nginx/html;\n    index index.html;\n    add_header Content-Type "text/html; charset=utf-8";\n  }\n}\n' > /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80

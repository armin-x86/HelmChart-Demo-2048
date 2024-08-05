FROM nginx:alpine3.19

COPY nginx_config /etc/nginx/conf.d/default.conf
COPY demo-app-2048 /usr/share/nginx/html

RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

USER nginx

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
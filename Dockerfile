FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
# axhub deploy contract: 사용자 앱은 8080 에서 listen
RUN sed -i 's/listen[[:space:]]*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080

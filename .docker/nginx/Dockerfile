FROM nginx:1.15.0-alpine
RUN rm /etc/nginx/conf.d/default.conf
# Faz a copy do meu arquivo p/ pasta do container
# Fazendo o set da configuração do serviço
COPY ./nginx.conf /etc/nginx/conf.d

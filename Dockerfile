# Usa uma versão leve do Nginx para servir os ficheiros estáticos rapidamente
FROM nginx:alpine

# Copia os ficheiros todos da pasta do projeto para o diretório público do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta 80, que é a porta em que o Nginx escuta por padrão
EXPOSE 80

# Inicia o servidor em modo foreground
CMD ["nginx", "-g", "daemon off;"]

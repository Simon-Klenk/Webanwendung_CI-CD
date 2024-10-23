# Verwende nginx als Basis-Image
FROM nginx:alpine

# Entferne den Standardinhalt von nginx
RUN rm -rf /usr/share/nginx/html/*

# Kopiere die HTML-Dateien von deinem Repository in das Docker-Image
COPY ./html /usr/share/nginx/html

# Exponiere den Port 80 für den Webserver
EXPOSE 80

# Starte nginx
CMD ["nginx", "-g", "daemon off;"]

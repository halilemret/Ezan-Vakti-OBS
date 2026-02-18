FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY ramazan_imsakiye_2026.json /usr/share/nginx/html/ramazan_imsakiye_2026.json
EXPOSE 80

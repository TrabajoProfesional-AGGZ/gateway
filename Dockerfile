FROM krakend:latest

# Copiamos tu archivo de configuración al contenedor
COPY krakend.json /etc/krakend/krakend.json

# Ejecutamos KrakenD
CMD ["run", "-d", "-c", "/etc/krakend/krakend.json"]
# Dockerfile
FROM chatwoot/chatwoot:latest

# Copiar el script de arranque personalizado
COPY start.sh /app/start.sh

# Darle permisos de ejecución
RUN chmod +x /app/start.sh

# Establecer el script como punto de entrada
CMD ["/app/start.sh"]

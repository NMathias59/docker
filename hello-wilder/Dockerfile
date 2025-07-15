# Utilise une image de base légère
FROM alpine:3.20

# Copie le script dans l'image
COPY hello_wilder.sh /usr/local/bin/hello_wilder.sh

# Rend le script exécutable
RUN chmod +x /usr/local/bin/hello_wilder.sh

# Commande par défaut
CMD ["/usr/local/bin/hello_wilder.sh"]

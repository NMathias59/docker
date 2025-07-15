# WordPress Docker Application

Ce dépôt contient une application WordPress orchestrée avec Docker Compose, organisée pour la sécurité et la maintenabilité.

## Structure du projet

- `compose.yml` : Configuration Docker Compose pour WordPress et MySQL, avec gestion des secrets.
- `.env` : Variables d'environnement non sensibles (exemple fourni).
- `secrets/` : Répertoire pour stocker les fichiers secrets utilisés par Docker Secrets (à créer et remplir manuellement, ne pas versionner les valeurs sensibles !).

## Variables d'environnement

Le fichier `.env` contient les variables nécessaires au fonctionnement de WordPress et MySQL, à l'exception des mots de passe et clés secrètes qui sont gérés via Docker Secrets.

| Variable                | Rôle                                      |
|-------------------------|--------------------------------------------|
| WORDPRESS_DB_HOST       | Hôte de la base de données                 |
| WORDPRESS_DB_NAME       | Nom de la base de données                  |
| WORDPRESS_DB_USER       | Utilisateur de la base de données          |

Les variables sensibles comme `WORDPRESS_DB_PASSWORD`, `MYSQL_ROOT_PASSWORD` et les clés WordPress sont injectées via Docker Secrets.

## Gestion des secrets

Les secrets doivent être placés dans le dossier `secrets/` sous forme de fichiers texte, par exemple :

- `db_password.txt` : Mot de passe utilisateur MySQL/WordPress
- `db_root_password.txt` : Mot de passe root MySQL
- `wp_auth_key.txt`, `wp_secure_auth_key.txt`, etc. : Clés secrètes WordPress

**Ne versionnez jamais ces fichiers dans Git !**

## Lancement de l'application

1. Placez vos secrets dans le dossier `secrets/` (voir ci-dessus).
2. Adaptez le fichier `.env` si besoin.
3. Lancez l'application :

```powershell
docker compose -f compose.yml up -d
```

## Bonnes pratiques
- Ne stockez jamais de secrets dans `.env` ou dans le dépôt Git.
- Utilisez Docker Secrets pour toute valeur sensible.
- Documentez et adaptez les variables d'environnement selon vos besoins.

---

Pour toute question, ouvrez une issue sur ce dépôt.

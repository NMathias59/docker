# Hello Wilder Docker Challenge

Ce projet propose une image Docker optimisée qui affiche :

```
Bonjour Wilder à partir du conteneur [nom du conteneur]
```

lorsqu'elle est lancée.

## Contenu
- `hello_wilder.sh` : script shell qui affiche le message avec le nom du conteneur (récupéré dynamiquement).
- `Dockerfile` : image basée sur Alpine Linux, légère et rapide à démarrer.

## Construction de l'image

Placez-vous dans le dossier du projet puis lancez :

```powershell
docker build -t hello-wilder:latest .
```

## Test de l'image

Pour tester localement :

```powershell
docker run --rm hello-wilder:latest
```

Vous devriez voir s'afficher :

```
Bonjour Wilder à partir du conteneur [nom_du_conteneur]
```

## Optimisation
- Utilisation d'Alpine Linux pour minimiser la taille de l'image.
- Aucun package inutile n'est installé.

## Publication sur Docker Hub

1. Connectez-vous à Docker Hub :
   ```powershell
   docker login
   ```
2. Taguez l'image (remplacez `votre_user` par votre identifiant Docker Hub) :
   ```powershell
   docker tag hello-wilder:latest votre_user/hello-wilder:latest
   ```
3. Poussez l'image :
   ```powershell
   docker push votre_user/hello-wilder:latest
   ```
4. Partagez le lien :
   https://hub.docker.com/r/votre_user/hello-wilder

## Critères d'acceptation
- L'image affiche le message attendu.
- La taille de l'image est minimale.
- L'image est disponible sur Docker Hub.

---

Pour toute question, ouvrez une issue ou contactez le mainteneur.

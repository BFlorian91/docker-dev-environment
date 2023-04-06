# Projet Docker pour l'environnement de développement
Ce projet Docker vous permet de créer un environnement de développement avec NeoVim. Vous pouvez facilement lancer l'environnement avec Docker Compose et lier votre dossier de travail local avec le dossier de travail du conteneur.

## Configuration requise
Docker
Docker Compose

## Installation
Clonez le projet sur votre machine locale : **git clone https://github.com/votre-nom/projet-docker.git**
Accédez au répertoire : **cd projet-docker**

## Utilisation
Démarrez l'environnement de développement avec la commande suivante : docker-compose up -d
Entrez dans le shell du conteneur en utilisant la commande suivante : docker-compose exec neovim fish
Vous pouvez maintenant utiliser NeoVim pour travailler sur vos fichiers locaux en accédant au dossier de travail monté dans le conteneur : cd /workdir
Pour arrêter l'environnement de développement, utilisez la commande suivante : docker-compose down

## Personnalisation
Vous pouvez personnaliser l'environnement de développement en modifiant les fichiers Dockerfile et docker-compose.yml. Vous pouvez également ajouter des alias pour Fish shell dans le fichier .config/fish/config.fish.

## Remarques
Les modifications apportées aux fichiers dans le dossier de travail du conteneur seront automatiquement synchronisées avec le dossier de travail local grâce à la liaison de volume.
Les modifications apportées aux fichiers Dockerfile et docker-compose.yml ne seront prises en compte qu'après avoir relancé l'environnement de développement avec la commande docker-compose up -d --build.
N'hésitez pas à consulter la documentation Docker pour plus d'informations sur l'utilisation de Docker et Docker Compose.

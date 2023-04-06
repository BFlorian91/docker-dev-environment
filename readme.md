# ![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white) ![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white) Projet Docker pour l'environnement de développement
Ce projet Docker vous permet de créer un environnement de développement avec NeoVim. Vous pouvez facilement lancer l'environnement avec Docker Compose et lier votre dossier de travail local avec le dossier de travail du conteneur.

## Configuration requise
- Docker
- Docker Compose

## Installation
Clonez le projet sur votre machine locale : __'git clone https://github.com/BFlorian91/dockerDevEnvironmen'__<br/>
Accédez au répertoire : __dockerDevEnvironmen__

## Utilisation
1. Démarrez l'environnement de développement avec la commande suivante : __'docker-compose up -d'__

2. Entrez dans le shell du conteneur en utilisant la commande suivante : __'docker-compose exec neovim fish'__

3. Vous pouvez maintenant utiliser NeoVim pour travailler sur vos fichiers locaux en accédant au dossier de travail monté dans le conteneur : __'cd /workdir'__

4. Pour arrêter l'environnement de développement, utilisez la commande suivante : __'docker-compose down'__

## Personnalisation
Vous pouvez personnaliser l'environnement de développement en modifiant les fichiers Dockerfile et docker-compose.yml. Vous pouvez également ajouter des alias pour Fish shell dans le fichier .config/fish/config.fish.

## Remarques
- Les modifications apportées aux fichiers dans le dossier de travail du conteneur seront automatiquement synchronisées avec le dossier de travail local grâce à la liaison de volume.
- Les modifications apportées aux fichiers Dockerfile et docker-compose.yml ne seront prises en compte qu'après avoir relancé l'environnement de développement avec la commande __'docker-compose up -d --build'__.<br/><br/>
N'hésitez pas à consulter la documentation Docker pour plus d'informations sur l'utilisation de Docker et Docker Compose.

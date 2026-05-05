# Les Gentlemen Cabrioleurs — Gazette Officielle

Blog de l'association Les Gentlemen Cabrioleurs, propulsé par Jekyll.

Pour garder l'anonymat, attention a bien définir un username et un email local de votre gentleman cabrioleur avant de commit:
```bash
git config --local user.name <username>
git config --local user.email <votre.email.gc@provider>
```

## Installation locale

Installer ruby et bundle:
```bash
# Pour Ubuntu
sudo apt install ruby-full ruby-bundler
```

```bash
# Installer les dépendances
bundle install

# Lancer le serveur local
bundle exec jekyll serve

# Visiter http://localhost:4000
```

## Écrire un article

Créez un fichier dans le dossier `_posts/` avec le format de nom :

```
YYYY-MM-DD-titre-de-larticle.md
```

Exemple : `2024-06-01-rallye-de-printemps.md`

### En-tête d'article (Front Matter)

```markdown
---
layout: post
title: "Titre de l'article"
subtitle: "Sous-titre optionnel"
date: 2024-06-01
author: "Votre Nom"
author_title: "Votre Fonction"
author_bio: "Une courte biographie."
category: "Reportages"   # Actualités, Événements, Reportages
tags: [rallye, provence]
drop_cap: true            # Optionnel : grande initiale au premier paragraphe
excerpt: "Résumé de l'article affiché en aperçu."
---

Votre contenu en Markdown ici...

Ex:

# Titre - Indice 8: 166
Contenu

 <!-- commentaire ignoré à la compilation, invisible dans l'inspecteur du navigateur -->

```

### Catégories disponibles

- `Actualités` — Nouvelles de l'association
- `Événements` — Agenda et annonces
- `Reportages` — Comptes-rendus et essais

## Déploiement sur GitHub Pages

1. Pusher sur la branche `deploy`
2. Le workflow GitHub Actions se déclenche automatiquement
3. Le site est publié sur `https://gentlemen-cabrioleurs.github.io/gazette/`

### Configuration initiale GitHub Pages

Dans les paramètres du dépôt (Settings > Pages) :
- Source : **GitHub Actions**

## Structure du projet

```
├── _config.yml          # Configuration Jekyll
├── _layouts/            # Templates de pages
├── _includes/           # Composants réutilisables (header, footer)
├── _posts/              # Articles de blog
├── _sass/               # Styles SCSS
├── assets/css/          # CSS compilé
├── index.html           # Page d'accueil
└── a-propos.md          # Page À propos
```

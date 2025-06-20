#!/bin/bash

# Nom du module
MODULE_NAME=$1
AUTHOR_NAME="Charlie Bertrand"
WEBSITE="https://www.drakkar.io/"

function usage() {
  echo " ERR -- Veuillez spécifier le nom du module à créer"
  echo "Exemple createodoomodule my_module"
  echo "Usage: $0 [MODULE_NAME]"
}

function done() {
  echo "Module $MODULE_NAME created"
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
  usage
  exit 0
fi

if [ -z "$MODULE_NAME" ]
then
  usage
  exit 1
fi

# Création du dossier du module
mkdir $MODULE_NAME

# Génération du fichier __manifest__.py
cat << EOF > $MODULE_NAME/__manifest__.py
{
    'name': '$MODULE_NAME',
    'version': '1.0',
    'summary': 'A REMPLIR',
    'description': 'A REMPLIR',
    'category': 'A REMPLIR',
    'author': '$AUTHOR_NAME',
    'website': '$WEBSITE',
    'depends': ['A REMPLIR'],  # Specify dependencies
    'installable': True,
    'auto_install': False,
    'data': [
      'views/*.xml'
    ],
    'assets': {
      'web.assets_frontend': [
          '$MODULE_NAME/static/src/**/*',
      ],
    }
}
EOF

# Génération du fichier __init__.py
touch $MODULE_NAME/__init__.py

# Création du dossier models et génération du fichier __init__.py
mkdir $MODULE_NAME/models
touch $MODULE_NAME/models/__init__.py
mkdir $MODULE_NAME/controllers
touch $MODULE_NAME/controllers/__init__.py
mkdir $MODULE_NAME/views

# Création du dossier static et génération du fichier __init__.py
mkdir $MODULE_NAME/static
mkdir $MODULE_NAME/static/description
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "$SCRIPT_DIR/icon.png" $MODULE_NAME/static/description/
# cp ./icon.png $MODULE_NAME/static/description/

mkdir $MODULE_NAME/static/src
mkdir $MODULE_NAME/static/src/js
touch $MODULE_NAME/static/src/js/.gitkeep
mkdir $MODULE_NAME/static/src/xml
touch $MODULE_NAME/static/src/xml/.gitkeep
mkdir $MODULE_NAME/static/src/scss
touch $MODULE_NAME/static/src/scss/.gitkeep

echo "Module $MODULE_NAME created"
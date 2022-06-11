# Module 164
***

Cette application permettera aux administrateurs de la communauté [Dykiz](https://discord.gg/vb2sFv8Fv9) de gérer leur boutique en-ligne.

Elle ne doit en aucun cas être exposée sur internet, sous risque de voir certaines personnes malveillantes y récolter des informations confidentielles.

## Prérequis
***
- [Python3](https://www.python.org/downloads/)
- Un server [MySQL](https://dev.mysql.com/downloads/) ( ou [XAMPP](https://www.apachefriends.org/fr/index.html), [UwAmp](https://www.uwamp.com/en/?page=download) )



## Installation
***
### Windows :
**Avec Pycharm**
 
1. Fermer tous les projets ouverts
2. Dans le menu de création de projet, cliquer sur l'onglet **"Get from VCS"**, puis collez l'URL ci-dessous :
```commandline
https://github.com/danglock/COLLE_DAN_INFO1B_BOUTIQUE_EN_LIGNE.git
```
3. Creér l'environement virtuel



## Usage
***
1. **Démarrer** un serveur **SQL**
2. Vérifier que le contenu du fichier de configuration **.env** soit en accord avec les **informations de connexion sur la BD**.
3. **Exécuter** le fichier ``database\1_ImportationDumpSql.py``  afin d'importer la base de donnée.
4. **Exécuter** le fichier ``run_mon_app.py``.



### Autheur
***
**Dan - dan@demoniak.ch**

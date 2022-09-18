# templategp-agile-sae-s3

Template de base pour gérer (en mode SCRUM-light) les SAE du s3 avec GitLab 🦊

![bannière](.ressources/ban.png)

##  1. <a name='Tabledesmatires'></a> Table des matières
<!-- vscode-markdown-toc -->
* 1. [ Table des matières](#Tabledesmatires)
* 2. [Pourquoi ce dépôt ?](#Pourquoicedpt)
* 3. [Que propose ce dépôt ?](#Queproposecedpt)
	* 3.1. [Les labels](#Leslabels)
	* 3.2. [Le Board](#LeBoard)
	* 3.3. [Les branches](#Lesbranches)
	* 3.4. [Modèles pour les issues et les merges requests](#Modlespourlesissuesetlesmergesrequests)
* 4. [Comment utiliser ce dépôt ?](#Commentutilisercedpt)
* 5. [Licence](#Licence)
* 6. [Auteur](#Auteur)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

##  2. <a name='Pourquoicedpt'></a>Pourquoi ce dépôt ?

Ce dépot à pour objectif de fournir un outil de démarrage rapide pour organiser et gérer un nouveau projet avec GitLab.

Partant du constat que le démarrage d'un projet est un processus long et complexe, j'ai voulu fournir un outil simple et efficace pour lancer un projet avec GitLab et ses outils !

##  3. <a name='Queproposecedpt'></a>Que propose ce dépôt ?

Ce dépôt fournit un ensemble de modèles, de fichiers et de paramétrages pour vous faciliter le démarrage d'un projet avec GitLab, vous y retrouverez les éléments suivants :

-   Ce fichier README.md
-   Des modèles pour les issues et les merges requests
-   Une collection de labels
-   Un modèle de Board
-   3 Branches :
    -   Main
    -   Pré-Production
    -   Production

###  3.1. <a name='Leslabels'></a>Les labels

Les labels sont des éléments qui sont associés à des issues et merges requests et qui permettent de les classer, le organiser et de les identifier simplement.

![label](.ressources/labels.jpg)

###  3.2. <a name='LeBoard'></a>Le Board

Le Board est l'outil central de GitLab pour organiser et gérer votre projet.

Il va vous permettre de visualiser les différentes tâches que vous avez à accomplir, et de suivre leur progression.

La structure de ce board adopte l'approche [Scrumban](https://asana.com/fr/resources/scrumban).

![board](.ressources/theBoard.gjpg)

###  3.3. <a name='Lesbranches'></a>Les branches

Les trois branches proposées dans ce template permettent de gérer de manière simple l'état du déploiement de votre projet.

Elles sont particulièrement utiles si vous leurs associez des pipelines GitLab CI pour automatiser le déploiement de votre projet en fonction des branches.

Ce modèle s'inspire librement de l'approche [GitLab Flow](https://www.youtube.com/watch?v=ZJuUz5jWb44).

![](.ressources/branches.jpg)

###  3.4. <a name='Modlespourlesissuesetlesmergesrequests'></a>Modèles pour les issues et les merges requests

Ce template propose des modèles pour les _issues_ et les _merge requests_ afin de simplifier et standardiser leur utilisation par les équipes du projet.

![board](.ressources/issues.jpg)

![board](.ressources/mr.jpg)

##  4. <a name='Commentutilisercedpt'></a>Comment utiliser ce dépôt ?

> Vous utilisez ce dépôt comme **base d'inspiration** pour votre gérer votre projet avec GitLab simplement en adaptant les éléments à votre contexte.

> **Vous pouvez également télécharger l'export du dépôt pour l'importer avec tous les éléments dèja présents (labels, issues, merges requests, board, branches, ...)**
> 1. [Télécharger l'export du dépôt](.ressources/export.tar.gz)
> 2. [Importer l'export dans GitLab](https://docs.gitlab.com/ee/user/project/settings/import_export.html#import-a-project-and-its-data)

##  5. <a name='Licence'></a>Licence

Ce dépôt est sous licence [MIT](LICENSE)

##  6. <a name='Auteur'></a>Auteur
Contact : @V.Deslandres
Ce travail est basé sur le kit starter de projet de [YoanDev](https://yoandev.co)

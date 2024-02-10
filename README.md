# Projet ETL avec Talend

## Aperçu

Ce projet ETL (Extract, Transform, Load) a été réalisé dans le cadre d'un contrôle continu en Master 1 Informatique, avec un focus sur les bases de données avancées. Il vise à illustrer la mise en œuvre pratique d'un processus ETL en utilisant Talend pour extraire des données, les transformer conformément à un modèle en étoile, et les charger dans une base de données SQLite.

*Job Talend pour remplir la table des ventes.*

![Talend : Job pour remplir la table des ventes](/imgs/Job_pour_remplir_table_des_ventes.png)

*Modélisation en étoile de l'entrepôt de données.*

![Modélisation en étoile](/imgs/une_modelisation_en_etoile.png)


## Caractéristiques

- **Modélisation Étoile**: Implémentation d'un schéma en étoile pour un entrepôt de données, facilitant l'analyse et les requêtes BI.
- **Résilience et Traçabilité**: Conception attentive pour assurer la résilience des données aux changements (ex. adresses des clients) et leur traçabilité grâce à l'emploi de timestamps.
- **Optimisation des Performances**: Techniques avancées pour optimiser les jobs Talend, réduisant les temps d'exécution en gérant efficacement les dimensions.

## Technologies Utilisées

- **Talend Open Studio v7.3.1**: Pour la conception et l'exécution des jobs ETL.
- **SQLite**: Base de données légère pour le stockage des données transformées.
- **Bash**: Scripting pour l'automatisation de tâches, comme la création de la base de données.

## A savoir si vous reprennez le code

- Entrepôt pour le TP Olap: datawarehouse.db (généré via nos jobs Talend)
- Notre fichier de script de création de tables SQL: CreateTables.sql

## Défis Rencontrés

La réalisation de ce projet a nécessité de surmonter divers défis, notamment la maîtrise de Talend, la gestion des erreurs de synchronisation et de typage, et l'optimisation des performances des jobs ETL. L'utilisation stratégique du composant TMap a été cruciale pour réussir les transformations et les chargements de données.

*Utilisation du composant TMap pour les ventes.*

![TMap des ventes](/imgs/TMap_de_ventes.png)

*Job Talend pour remplir les dimensions de dates.*

![Job pour remplir les dates](/imgs/Job_remplir_les_dates.png)

*Exemple d'utilisation des fonctions Talend pour parser les dates.*

![Utilisation de fonctions de Talend](/imgs/parseDate.png)

*Fig.6 - Job Talend pour peupler la table des clients.*

![Job pour remplir la table Clients](/imgs/Job_remplir_table_clients.png)

## Conclusion

Ce projet de datawarehouse et de processus ETL dans le domaine du Big Data reflète mon engagement à appliquer des concepts avancés d'analyse de données et de gestion de bases de données dans un contexte pratique. En surmontant des défis techniques significatifs, j'ai développé et optimisé une solution de traitement de données massives, prouvant ma capacité à transformer les données brutes en informations stratégiques pour la prise de décision. Cette expérience souligne non seulement ma maîtrise technique, mais aussi ma capacité à innover et à penser de manière critique face aux problématiques complexes du Big Data, alignant mes compétences avec les besoins croissants de l'industrie en matière d'analyse de données de santé.


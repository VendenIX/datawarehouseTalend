# Projet ETL avec Talend

## Aperçu

Ce projet ETL (Extract, Transform, Load) a été réalisé dans le cadre d'un contrôle continu en Master 1 Informatique, avec un focus sur les bases de données avancées. Il vise à illustrer la mise en œuvre pratique d'un processus ETL en utilisant Talend pour extraire des données, les transformer conformément à un modèle en étoile, et les charger dans une base de données SQLite.

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

## Conclusion

Ce projet démontre notre capacité à appliquer des concepts avancés de bases de données et d'ETL dans un cadre pratique, tout en naviguant à travers les défis techniques pour aboutir à une solution efficace et optimisée.
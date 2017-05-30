# Atelier SQL, DQL, QueryBuilder
Vous n'avez rien compris à mon histoire de DQL et de Query Builder ? OK, qu'à cela ne tienne !
Je vais vous faire travailler un peu le sujet en repartant de la BDD du checkpoint numéro 3.


## Principe général

Je vais te donner une liste de consignes qui ont toutes pour but de récupérer une ou plusieurs informations en base de donnée.
Tu devras trouver comment récupérer en BDD l'information demandée grâce aux différents moyens possibles : SQL (que tu maîtrise les yeux fermés maintenant), en DQL et avec le queryBuilder.
Certaines vont te paraîtres simples ou déjà vu, mais c'est pour mieux te mettre en jambe.
Chaque demande devra etre realisée en SQL, puis en DQL et enfin avec le QueryBuilder.
Faire et refaire, ce n'est pas toujours agréable, mais ça fait parti du processus d'apprentissage.

## Ce que j’attends de toi :

1. Affiche la liste de tous les épisodes d'une série,
2. Affiche le nombre total d’épisodes contenus en BDD,
3. Affiche l’épisode le moins bien noté de toute la BDD,
4. Affiche l’épisode le mieux noté d'une série précise,
5. Affiche les 3 pires séries à ne pas regarder,
6. Affiche les 3 meilleures épisodes toutes series confondues en indiquant le nom de la série,
7. Affiche la série la plus longue en nombre d’épisodes,
8. Affiche toutes les séries sorties avant 2000.
9. Affiche toutes les séries avec le nombre total d’épisodes pour chaque saison d'une série,
10. Affiche la note moyenne de chaque saison d'une série,

## Comment y arriver ?

### Pour le SQL :
Crée toi une branche sur ce projet avec ton nom.
Ajoutes un fichier exercice.sql où tu mettras toutes tes requêtes SQL.

### Pour le DQL et QueryBuilder :
Reprend ton projet de checkpoint 3.
Depuis la branche à ton nom, crée une nouvelle branche nommée nom_AD.
Crée dans le fichier approprié les différentes méthodes qui permettent d'effectuer ces récupérations en base de données.
Afin d'afficher le résultat de ces différentes requêtes, tu peux créer une route /tvshow/querybuilder

* Une seule méthode par consigne et par approche,
* Chaque méthode utilise en suffixe DQL ou QB (ex. findAllQB() / findAllDQL() )


### Un peu de documentation :

[Doctrine & Symfony](http://symfony.com/doc/current/doctrine.html),

[Doctrine et le DQL](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/dql-doctrine-query-language.html),

[Doctrine et le QueryBuilder](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/query-builder.html).

# Atelier SQL, DQL, QueryBuilder
Vous n'avez rien compris a mon histoire de DQL et de Query Builder ? OK, qu'a cela ne tienne !
Je vais vous faire travailler un peu le sujet en repartant de la du checkpoint numéro 3.


## Principe général

Je vais te donner une liste de consigne qui ont toutes pour but de récupérer une ou plusieurs informations en base de donnée.
Tu devras trouver comment récupérer en BDD l'information demandée grâce aux différents moyens possibles : SQL (que tu maîtrise les yeux fermés maintenant), en DQL et avec le queryBuilder.
Certaines vont te paraître simples ou déjà vu, mais c'est pour te mettre en jambe.

## Ce que j’attends de toi :

1. Affiche la liste de tous les épisode d'une série,
2. Affiche le nombre total d’épisodes contenus en BDD,
3. Affiche toutes les séries avec le nombre total d’épisodes pour chaque saison d'une série,
4. Affiche la note moyenne de chaque saison d'une série,
5. Affiche l’épisode le moins bien noté de toute la BDD,
6. Affiche l’épisode le mieux noté d'une série précise,
7. Affiche les 3 pires séries à ne pas regarder,
8. Affiche les 3 meilleures épisodes toutes series confondues en indiquant le nom de la serie,
9. Affiche la série la plus longue en nombre d’épisodes,
10. Affiche toutes les séries sorties avant 2000.

## Comment y arriver ?

### Pour le SQL :
Crée toi une branche sur ce projet avec ton nom.
Ajoutes un fichier exercice.sql où tu mettras toutes tes requêtes SQL

### Pour le DQL et QueryBuilder :
Reprend ton projet de checkpoint 3.
Depuis la branche a ton nom, crée une nouvelle branche nommée nom_AD.
Crée dans le fichier approprié les différentes méthodes qui permettent d'effectuer ces récupérations en base de données.

* Une seule méthode par consigne et par approche,
* Chaque méthode utilise en suffixe DQL ou QB (ex. findAllQB() / findAllDQL() )


### Un peu de documentation :

[Doctrine & Symfony](http://symfony.com/doc/current/doctrine.html)
[Doctrine et le DQL](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/dql-doctrine-query-language.html)
[Doctrine et le QueryBuilder](http://docs.doctrine-project.org/projects/doctrine-orm/en/latest/reference/query-builder.html)

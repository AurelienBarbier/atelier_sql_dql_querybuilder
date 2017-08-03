-- TABLE tv_show : id / name / type / url / year
-- TABLE episode : id / tv_show_id / name / season / number / note

-- Affiche la liste de tous les épisodes dune série
SELECT *
FROM episode
WHERE tvshow_id = 1;

-- Affiche le nombre total d’épisodes contenus en BDD
SELECT COUNT(*)
FROM episode;

-- Affiche l’épisode le moins bien noté de toute la BDD
SELECT *
FROM episode
ORDER BY note ASC
LIMIT 1;

-- Affiche l’épisode le mieux noté d'une série précise
SELECT *
FROM episode
WHERE id = 1
ORDER BY note DESC
LIMIT 1;

-- Affiche les 3 pires séries à ne pas regarder
SELECT tv_show.name AS 'name', AVG(note) AS 'note'
FROM episode
JOIN tv_show ON
episode.tv_show_id = tv_show.id
GROUP BY tv_show.name
ORDER BY note
LIMIT 3;

--Affiche les 3 meilleures épisodes toutes series confondues en indiquant le nom de la série
SELECT tv_show.name AS 'serie', episode.name AS 'episode', AVG(note) AS 'note'
FROM episode
JOIN tvshow ON
episode.tv_show_id = tv_show.id
GROUP BY tv_show.name
ORDER BY note DESC
LIMIT 3;

--Affiche la série la plus longue en nombre d’épisodes
SELECT tv_show.name AS 'serie', MAX(number) AS 'nbre episode'
FROM episode
JOIN tv_show ON episode.tv_show_id = tv_show.id;
               --ou
SELECT tv_show.name AS 'serie', MAX(number) AS 'nbre episode'
FROM episode
JOIN tv_show ON episode.tv_show_id = tv_show.id
GROUP BY tv_show.name
ORDER BY  number
LIMIT 1;

--Affiche toutes les séries sorties avant 2000
SELECT name, year
FROM tv_show
WHERE year < 2000;

--Affiche toutes les séries avec le nombre total d’épisodes pour chaque saison d'une série
SELECT tv_show.name, season, COUNT(number) AS nb
FROM episode
JOIN tv_show
ON tv_show.id = episode.tv_show_id
WHERE tv_show.id = 3
GROUP BY tv_show.id, season;

--Affiche la note moyenne de chaque saison d'une série
SELECT tv_show.name, season, AVG(note)
FROM episode
JOIN tv_show
ON tv_show.id = episode.tv_show_id
WHERE tv_show.id = 3
GROUP BY season;


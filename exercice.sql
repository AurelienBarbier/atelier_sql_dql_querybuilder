SELECT * FROM episode WHERE episode.tvshow_id = 3;

SELECT COUNT(id) FROM episode;

SELECT * FROM episode ORDER BY episode.note ASC LIMIT 1;

SELECT * FROM episode WHERE episode.tvshow_id = 4 ORDER BY episode.note DESC LIMIT 1;

SELECT *, AVG(episode.note) AS note FROM tv_show JOIN episode ON tv_show.id = episode.tvshow_id GROUP BY tv_show.id ORDER BY note ASC LIMIT 3;

SELECT * FROM episode LEFT JOIN tv_show ON episode.tvshow_id = tv_show.id ORDER BY note DESC LIMIT 3;

SELECT *, COUNT(episode.id) AS nb_episodes FROM tv_show JOIN episode ON tv_show.id = episode.tvshow_id GROUP BY tv_show.id ORDER BY nb_episodes DESC LIMIT 1;

SELECT * FROM tv_show WHERE tv_show.year < 2000;

SELECT *, COUNT(episode.id) AS nb_episodes_saison FROM tv_show JOIN episode ON tv_show.id = episode.tvshow_id GROUP BY tv_show.id, episode.season;

SELECT *, AVG(episode.note) AS note_saison FROM tv_show JOIN episode ON tv_show.id = episode.tvshow_id GROUP BY tv_show.id, episode.season;

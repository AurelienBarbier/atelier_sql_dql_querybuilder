1 :
SELECT * 
FROM episode e 
WHERE e.tv_show_id = 15;

2 :
SELECT COUNT(*) 
FROM episode;

3 :
SELECT * 	
FROM episode e
ORDER BY e.note 
LIMIT 1 ;

4 :
SELECT * 
FROM episode e 
WHERE e.tv_show_id = 11 
ORDER BY e.note DESC 
LIMIT 1 ;

5 :
SELECT s.name, AVG(e.note) AS avg_note 
FROM tv_show s 
LEFT JOIN episode e 
ON (s.id = e.tv_show_id) 
GROUP BY s.name 
ORDER BY avg_note 
LIMIT 3 ;

6 :
SELECT s.name AS tvshow_name, e.name AS episode_name , e.note
FROM episode e
LEFT JOIN tv_show s
ON (s.id = e.tv_show_id) 
ORDER BY e.note DESC
LIMIT 3 ;

7 :
SELECT s.name, COUNT(*) AS nb_episodes 
FROM tv_show s 
LEFT JOIN episode e
ON (s.id = e.tv_show_id) 
GROUP BY s.name 
ORDER BY nb_episodes DESC
LIMIT 1 ;

8 :
SELECT * 
FROM tv_show s 
WHERE s.year < 2000 ;

9 :
SELECT s.name, ep.season, ep.nb_episodes 
FROM tv_show s 
LEFT JOIN  
	(
	SELECT e.tv_show_id, e.season AS season, COUNT(*) AS nb_episodes 
	FROM episode e 
	GROUP BY e.tv_show_id, e.season
	) ep 
ON (s.id = ep.tv_show_id) ;

10 :
SELECT s.name, ep.season, ep.avg_note 
FROM tv_show s 
LEFT JOIN 
	(
	SELECT e.tv_show_id, e.season AS season, AVG(e.note) AS avg_note 
	FROM episode e 
	GROUP BY e.tv_show_id, e.season
	) ep 
ON (s.id = ep.tv_show_id) ;


--Write a SQL query to find the match number for the game with the highest number of
--penalty shots, and which countries played that match.


SELECT sc.country_name,ps.match_no,COUNT(ps.score_goal) from penalty_shootout as ps
join soccer_country as sc on ps.team_id = sc.country_id
GROUP by ps.team_id LIMIT 2 ;
--Write a SQL query that returns the total number of goals scored by each position on
--each country’s team. Do not include positions which scored no goals.

SELECT pm.player_name,pm.posi_to_play,count(gd.goal_id) from goal_details as gd
join player_mast as pm USING(player_id) 
join soccer_country as sc on gd.team_id = sc.country_id
GROUP by pm.posi_to_play;
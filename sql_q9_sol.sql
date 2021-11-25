--Write a SQL query to find the goalkeeper’s name and jersey number, playing for
--Germany, who played in Germany’s group stage matches.

SELECT pm.player_name ,pm.posi_to_play,pm.jersey_no,md.play_stage,sc.country_name from player_mast as pm 
left join match_details as md on pm.team_id = md.team_id
left JOIN soccer_country as sc on pm.team_id = sc.country_id
WHERE pm.posi_to_play =(SELECT position_id from playing_position where position_desc = 'Goalkeepers')
and md.play_stage ="G" 
and pm.team_id = (SELECT country_id from soccer_country where country_name = "Germany");


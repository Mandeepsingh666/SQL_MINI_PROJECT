--Write a SQL query to find the players, their jersey number, and playing club who were
--the goalkeepers for England in EURO Cup 2016.

SELECT pm.player_name,pm.jersey_no,pm.playing_club,pm.posi_to_play,sc.country_name from player_mast as pm
left JOIN soccer_country as sc on pm.team_id = sc.country_id 
WHERE pm.posi_to_play = 'GK' and sc.country_name = 'England';
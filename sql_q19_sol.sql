--Write a SQL query to find the number of captains who were also goalkeepers.

with CTE AS (
  SELECT player_captain from match_captain)
  
SELECT player_id as captain , posi_to_play from player_mast
where player_id in CTE and posi_to_play = 'GK';
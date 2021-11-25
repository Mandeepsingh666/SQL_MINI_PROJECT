--Write a SQL query to find the substitute players who came into the field in the first
--half of play, within a normal play schedule.

SELECT DISTINCT player_name
FROM player_mast as pm
INNER JOIN player_in_out as pio
ON pm.player_id = pio.player_id
WHERE in_out = 'I' AND play_schedule = 'NT' AND play_half = 2 ;
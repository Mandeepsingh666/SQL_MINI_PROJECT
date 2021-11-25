--Write a SQL query to compute a list showing the number of substitutions that
--happened in various stages of play for the entire tournament

SELECT play_schedule,play_half,count(*) as  number_of_substitutions from  player_in_out 
GROUP by play_schedule, play_half;
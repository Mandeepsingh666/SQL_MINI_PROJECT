--Write a SQL query to find all the defenders who scored a goal for their teams

SELECT player_id,player_name,posi_to_play,sc.country_name,count(gd.goal_id) as Num_goals from player_mast 
left join  goal_details as gd using(player_id)
LEFT JOIN soccer_country as sc on player_mast.team_id = sc.country_id
where posi_to_play ='DF' or posi_to_play ='FD'
group by player_id
HAVING count(gd.goal_id) != 0  
order by  count(gd.goal_id) DESC;
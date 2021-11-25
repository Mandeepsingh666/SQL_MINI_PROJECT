--Write a SQL query to find the referees who booked the most number of players.

SELECT match_no,referee_id ,referee_name ,count(booking_time) as Num_booking from player_booked
left JOIN match_mast as mm USING(match_no) 
left  JOIN referee_mast as rm using(referee_id)
GROUP by referee_id 
order by count(booking_time) DESC 
limit 5;
-- Write a SQL query to find the highest number of foul cards given in one match.

  --- i  assume book time is like giveing a player card so need to count foul 
  
  
  
  SELECT match_no, count(booking_time) as foul  from player_booked 
  group by match_no
  order by foul DESC;


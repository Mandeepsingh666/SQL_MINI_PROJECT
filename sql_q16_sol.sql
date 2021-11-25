--Write a SQL query to find referees and the number of matches they worked in each
--venue.

SELECT sv.venue_name,rm.referee_name, count(referee_id) as Number_of_match from match_mast 
left join referee_mast as rm using(referee_id) 
left JOIN soccer_venue as sv USING(venue_id)
GROUP by venue_id
order by Number_of_match DESC;
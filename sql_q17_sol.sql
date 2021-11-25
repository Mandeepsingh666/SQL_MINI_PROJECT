--Write a SQL query to find the country where the most assistant referees come from,
--and the count of the assistant referees.

SELECT country_name , count(country_name)as Num_countries from asst_referee_mast 
INNER join soccer_country USING(country_id) 
GROUP by country_name
ORDER by Num_countries DESC;
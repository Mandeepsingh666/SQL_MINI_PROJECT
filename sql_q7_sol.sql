--Write a SQL query to find all the venues where matches with penalty shootouts were
--played.

SELECT mm.match_no, mm.decided_by as decided_by_penelty_shootouts, sv.venue_name from match_mast as mm 
INNER JOIN soccer_venue as sv 
WHERE mm.decided_by = "P";

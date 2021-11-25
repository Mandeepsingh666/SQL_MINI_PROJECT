--Write a SQL query to find the number of matches that were won by penalty shootout.

SELECT count(*) as Match_won_penalty_shootout from match_mast WHERE decided_by = 'P' and results ='WIN';
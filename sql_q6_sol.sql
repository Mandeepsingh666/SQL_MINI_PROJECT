--Write a SQL query to find the number of matches that were won by a single point, but
--do not include matches decided by penalty shootout.
SELECT count(*) as Match_won_by_single_point from match_mast 
Where results = 'WIN' and goal_score = '0-1' or goal_score ='1-0' and decided_by != 'P';
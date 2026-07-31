# Write your MySQL query statement below
Select tweet_id 
From Tweets
where Char_length(content) > 15;
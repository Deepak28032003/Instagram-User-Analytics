-- using id_clone database
use ig_clone;

-- Checking all the information in the database
select * from comments;
select * from `follows` order by followee_id;
select * from likes;
select * from photo_tags;
select * from photos;
select * from tags;
select * from users;

-- Counting the number of followers and followee
SELECT 
    COUNT(DISTINCT follower_id) AS No_of_follower,
    COUNT(DISTINCT followee_id) AS No_of_followee
FROM
    `follows`;

-- Counting the number of followers for each followee
SELECT 
    followee_id, 
    count(followee_id) as followers
FROM
    `follows` 
group by 1;
# META-Business-Suite
## Overview
#### Dayabase:MBS_db

## Objectives

## Creating Database
```sql
CREATE DATABASE MBS_db;
USE MBS_db;
```
## Creating Table
```sql
CREATE TABLE posts(
    post_id INT PRIMARY KEY,
        user_id INT UNIQUE,
    content_type VARCHAR(20),
    post_date DATE,
    post_time TIME,
    likes BIGINT,
    comments BIGINT,
    shares BIGINT,
    video_length_sec BIGINT,
    campaign_name VARCHAR(50)
);
SELECT * FROM posts;
```
#### 1. Which content type (video/image/text) has the highest average engagement (likes + comments + shares)?
```sql
SELECT content_type,ROUND(AVG(likes+comments+shares),2) AS Average_engagement FROM posts
WHERE content_type IN ('video','text','image')
GROUP BY content_type
ORDER BY Average_engagement DESC
LIMIT 1;
```
#### 2. What percentage of total posts are videos versus images versus text?
```sql
SELECT content_type, COUNT(*) AS Total_posts, COUNT(*)*100/(SELECT COUNT(*) FROM posts) AS Percentage FROM posts
GROUP BY content_type;
```
#### 3. Which 5 posts have the highest combined engagement scores (likes + comments + shares)?
```sql
SELECT *,SUM(likes + comments + shares) AS Total_Engagements FROM posts
GROUP BY post_id
ORDER BY Total_Engagements DESC
LIMIT 5;
```
###$ 4. How does average engagement vary by hour of posting?
```sql
SELECT HOUR(post_time) AS Hour_of_posting, ROUND(AVG(likes+comments+shares),2) AS Average_engagement FROM posts
GROUP BY Hour_of_posting
ORDER BY Hour_of_posting;
```
###$ 5. Which day of the week receives the most posts?
```sql
SELECT DAYNAME(post_date) AS Day_of_Week, COUNT(*) AS Total_Posts FROM posts
GROUP BY Day_of_Week
ORDER BY  Total_Posts DESC
LIMIT 1;
```
#### 6. Is there a correlation between post time (morning/afternoon/evening) and share count?
```sql
SELECT 
        CASE WHEN HOUR(post_time) BETWEEN 5 AND 11 THEN 'Morning'
                 WHEN HOUR(post_time) BETWEEN 12 AND 16 THEN 'Afternoon'
         WHEN HOUR(post_time) BETWEEN 17 AND 19 THEN 'Evening'
         ELSE 'Night'
        END AS Post_Time_Period,
    COUNT(*) AS Total_Posts,
    AVG(shares) AS Average_Shares,
    MAX(shares) AS Max_Shares,
    MIN(shares) AS Min_Shares,
    ROUND(STDDEV(shares),2) AS Share_Std_Dev
    FROM posts
GROUP BY Post_Time_Period
ORDER BY Average_Shares DESC;
```
#### 7. Which marketing campaign has the highest average likes per post?
```sql
SELECT campaign_name, AVG(likes) AS High_Avg_Likes_per_Post FROM Posts
GROUP BY campaign_name
ORDER BY High_Avg_Likes_per_Post DESC
LIMIT 1;
```
#### 8. How many posts does each active campaign have?
```sql
SELECT campaign_name,COUNT(*) AS Total_posts FROM Posts
GROUP BY campaign_name;
```
#### 9. Which campaigns have above-average comment engagement?
```sql
SELECT campaign_name,AVG(comments) AS comment_engagement FROM posts
GROUP BY campaign_name
HAVING comment_engagement>(SELECT AVG(comments) FROM posts)
ORDER BY comment_engagement DESC;
```
#### 10. What's the average length (in seconds) of video posts?
```sql
SELECT content_type, AVG(video_length_sec) AS Average_length FROM posts
WHERE content_type='video';
```
#### 11. Do longer videos (>2 minutes) get more shares than shorter videos?
```sql
SELECT 
        CASE WHEN ROUND(video_length_sec) <=120 THEN 'Short video'
                ELSE 'Long video'
        END AS Length_Category,
    AVG(shares) AS Avg_Shares,
    COUNT(*) AS Total_Posts FROM posts
WHERE content_type='video'
GROUP BY Length_Category;
```
#### 12. Which video post has the highest like-to-view ratio (likes/video_length_sec)?
```sql
SELECT *,likes/video_length_sec AS Like_to_view_ratio FROM posts
WHERE content_type='video' AND video_length_sec>0
ORDER BY like_to_view_ratio DESC
LIMIT 1;
```
#### 13. How does engagement differ between weekdays and weekends?
```sql
SELECT 
        CASE WHEN DAYNAME(post_date) IN ('Saturday','Sunday') THEN 'Weekends'
                ELSE 'Weekdays'
        END AS Day_Category,
    SUM(shares+likes+comments) AS Total_Engagement FROM posts
GROUP BY Day_Category;
```
#### 14. Which content type has the highest comment-to-like ratio?
```sql
SELECT content_type,AVG(comments/likes) AS comment_to_like_ratio FROM posts
WHERE likes>0
GROUP BY content_type
ORDER BY comment_to_like_ratio DESC
LIMIT 1;
```
#### 15. What's the distribution of posts across different campaign types?
```sql
SELECT campaign_name, COUNT(*) AS Total_Posts FROM posts
GROUP BY campaign_name;
```
#### 16. Calculate the "viral coefficient" for each post: (shares/comments) likes?
```sql
SELECT *, ROUND((shares/comments)*likes,3) AS Viral_Coefficient FROM posts
WHERE comments>0;
```
#### 17. Build an engagement heatmap by day_of_week and hour_of_day?
```sql

```
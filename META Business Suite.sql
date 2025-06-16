CREATE DATABASE MBS_db;
USE MBS_db;

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

INSERT INTO posts VALUES
	(1, 101, 'video', '2025-01-05', '09:15:00', 245, 32, 18, 120,  'NewYearFit'),
	(2, 102, 'image', '2025-01-06', '11:30:00', 189, 14, 7, NULL, 'Wanderlust'),
	(3, 103, 'text', '2025-01-07', '14:45:00', 87, 5, 2, NULL, 'MindsetMatters'),
	(4, 104, 'video', '2025-01-08', '16:20:00', 512, 78, 45, 180, 'TechTrends'),
	(5, 105, 'image', '2025-01-09', '10:10:00', 321, 42, 21, NULL, 'TastyBites'),
	(6, 106, 'video', '2025-01-10', '13:05:00', 430, 65, 32, 90, 'SoundWave'),
	(7, 107, 'text', '2025-01-11', '08:30:00', 112, 8, 4, NULL, 'DailyInspo'),
	(8, 108, 'image', '2025-01-12', '17:45:00', 276, 35, 19, NULL, 'CreativeMinds'),
	(9, 109, 'video', '2025-01-13', '12:15:00', 398, 54, 28, 150,'FitFam2025'),
	(10, 110, 'text', '2025-01-14', '19:20:00', 95, 7, 3, NULL, 'DeepThinker'),
	(11, 111, 'video', '2025-01-15', '14:30:00', 587, 92, 51, 210,  'LaughFactory'),
	(12, 112, 'image', '2025-01-16', '10:45:00', 203, 26, 12, NULL, 'PetLovers'),
	(13, 113, 'text', '2025-01-17', '07:50:00', 78, 4, 1, NULL, 'WordArt'),
	(14, 114, 'video', '2025-01-18', '21:10:00', 654, 105, 63, 240,'GameOn'),
	(15, 115, 'image', '2025-01-19', '15:20:00', 312, 38, 22, NULL,'Trendsetters'),
	(16, 116, 'video', '2025-01-20', '11:55:00', 421, 71, 37, 95,'HomeChef'),
	(17, 117, 'text', '2025-01-21', '09:25:00', 103, 9, 5, NULL, 'Achievers'),
	(18, 118, 'image', '2025-01-22', '18:40:00', 287, 31, 17, NULL, 'ShutterBug'),
	(19, 119, 'video', '2025-01-23', '13:50:00', 376, 62, 29, 175, 'GadgetGuide'),
	(20, 120, 'text', '2025-01-24', '08:15:00', 91, 6, 2, NULL, 'ZenLife'),
	(21, 121, 'video', '2025-01-25', '16:30:00', 543, 88, 47, 195, 'GlobeTrotter'),
	(22, 122, 'image', '2025-01-26', '12:05:00', 231, 29, 14, NULL, 'UrbanSpaces'),
	(23, 123, 'text', '2025-01-27', '20:45:00', 84, 5, 3, NULL,'BookWorm'),
	(24, 124, 'video', '2025-01-28', '10:20:00', 467, 73, 42, 135, 'Brainiac'),
	(25, 125, 'image', '2025-01-29', '14:55:00', 298, 41, 23, NULL,'SpeedDemons'),
	(26, 126, 'video', '2025-01-30', '17:10:00', 389, 67, 35, 155, 'YogaFlow'),
	(27, 127, 'text', '2025-01-31', '07:30:00', 97, 8, 4, NULL, 'BizGenius'),
	(28, 128, 'image', '2025-02-01', '19:25:00', 265, 33, 18, NULL, 'CozyLiving'),
	(29, 129, 'video', '2025-02-02', '11:40:00', 512, 84, 49, 205, 'StagePresence'),
	(30, 130, 'text', '2025-02-03', '09:05:00', 108, 11, 6, NULL, 'EfficientYou'),
	(31, 131, 'video', '2025-02-04', '15:50:00', 476, 79, 44, 165, 'BeautyGuru'),
	(32, 132, 'image', '2025-02-05', '13:15:00', 243, 30, 16, NULL,  'WildPlanet'),
	(33, 133, 'text', '2025-02-06', '08:40:00', 89, 7, 3, NULL, 'HeartToHeart'),
	(34, 134, 'video', '2025-02-07', '21:05:00', 598, 97, 56, 225, 'PixelWarrior'),
	(35, 135, 'image', '2025-02-08', '16:20:00', 324, 45, 24, NULL, 'FoodieAdventures'),
	(36, 136, 'video', '2025-02-09', '12:35:00', 432, 72, 39, 140, 'CodeMaster'),
	(37, 137, 'text', '2025-02-10', '10:00:00', 102, 9, 5, NULL, 'HappyHome'),
	(38, 138, 'image', '2025-02-11', '18:15:00', 278, 37, 20, NULL, 'CanvasCreator'),
	(39, 139, 'video', '2025-02-12', '14:30:00', 523, 86, 50, 190, 'NomadLife'),
	(40, 140, 'text', '2025-02-13', '07:55:00', 94, 6, 2, NULL,  'MoneyMatters'),
	(41, 141, 'video', '2025-02-14', '20:20:00', 687, 113, 67, 250, 'JokeCentral'),
	(42, 142, 'image', '2025-02-15', '11:45:00', 256, 34, 19, NULL,  'FitJourney'),
	(43, 143, 'text', '2025-02-16', '09:10:00', 86, 5, 1, NULL, 'TimeTraveler'),
	(44, 144, 'video', '2025-02-17', '17:25:00', 498, 81, 46, 170, 'LabCoat'),
	(45, 145, 'image', '2025-02-18', '13:40:00', 301, 43, 25, NULL, 'EliteLiving'),
	(46, 146, 'video', '2025-02-19', '10:05:00', 453, 75, 41, 145, 'VocalStar'),
	(47, 147, 'text', '2025-02-20', '19:30:00', 115, 12, 7, NULL,'CareerBoost'),
	(48, 148, 'video', '2025-02-21', '15:45:00', 678, 92, 53, 150, 'Style2025'),
	(49, 149, 'image', '2025-02-22', '13:10:00', 234, 28, 12, NULL,'EarthLovers'),
	(50, 150, 'text', '2025-02-23', '08:35:00', 156, 19, 8, NULL, 'DailyQuote');
    
SELECT * FROM posts;

SELECT content_type,ROUND(AVG(likes+comments+shares),2) AS Average_engagement FROM posts
WHERE content_type IN ('video','text','image')
GROUP BY content_type
ORDER BY Average_engagement DESC
LIMIT 1;

SELECT content_type, COUNT(*) AS Total_posts, COUNT(*)*100/(SELECT COUNT(*) FROM posts) AS Percentage FROM posts
GROUP BY content_type;
 
SELECT *,SUM(likes + comments + shares) AS Total_Engagements FROM posts
GROUP BY post_id
ORDER BY Total_Engagements DESC
LIMIT 5;

SELECT HOUR(post_time) AS Hour_of_posting, ROUND(AVG(likes+comments+shares),2) AS Average_engagement FROM posts
GROUP BY Hour_of_posting
ORDER BY Hour_of_posting;

SELECT DAYNAME(post_date) AS Day_of_Week, COUNT(*) AS Total_Posts FROM posts
GROUP BY Day_of_Week
ORDER BY  Total_Posts DESC
LIMIT 1;

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
    
SELECT campaign_name, AVG(likes) AS High_Avg_Likes_per_Post FROM Posts
GROUP BY campaign_name
ORDER BY High_Avg_Likes_per_Post DESC
LIMIT 1;

SELECT campaign_name,COUNT(*) AS Total_posts FROM Posts
GROUP BY campaign_name;

SELECT campaign_name,AVG(comments) AS comment_engagement FROM posts
GROUP BY campaign_name
HAVING comment_engagement>(SELECT AVG(comments) FROM posts)
ORDER BY comment_engagement DESC;

SELECT content_type, AVG(video_length_sec) AS Average_length FROM posts
WHERE content_type='video';

SELECT 
	CASE WHEN ROUND(video_length_sec) <=120 THEN 'Short video'
		ELSE 'Long video'
	END AS Length_Category,
    AVG(shares) AS Avg_Shares,
    COUNT(*) AS Total_Posts FROM posts
WHERE content_type='video'
GROUP BY Length_Category;

SELECT *,likes/video_length_sec AS Like_to_view_ratio FROM posts
WHERE content_type='video' AND video_length_sec>0
ORDER BY like_to_view_ratio DESC
LIMIT 1;
 
SELECT 
	CASE WHEN DAYNAME(post_date) IN ('Saturday','Sunday') THEN 'Weekends'
		ELSE 'Weekdays'
	END AS Day_Category,
    SUM(shares+likes+comments) AS Total_Engagement FROM posts
GROUP BY Day_Category;

SELECT content_type,AVG(comments/likes) AS comment_to_like_ratio FROM posts
WHERE likes>0
GROUP BY content_type
ORDER BY comment_to_like_ratio DESC
LIMIT 1;

SELECT campaign_name, COUNT(*) AS Total_Posts FROM posts
GROUP BY campaign_name;

SELECT *, ROUND((shares/comments)*likes,3) AS Viral_Coefficient FROM posts
WHERE comments>0;

-- BY DAY OF WEEK
SELECT 
	DAYNAME(post_date) AS Day_of_Week, 
	COUNT(*) AS Total_Posts, SUM( shares) AS Total_Shares,
    SUM(comments) AS Total_Comments,SUM(likes) AS Total_Likes, 
    SUM(comments+likes+shares) AS Total_Engagements,
	AVG(comments+likes+shares) AS Average_Engagement FROM posts
GROUP BY Day_of_Week;
-- BY HOUR OF DAY
SELECT
	HOUR(post_time) AS Hour_of_Day,
	COUNT(*) AS Total_Posts, SUM( shares) AS Total_Shares,
    SUM(comments) AS Total_Comments,SUM(likes) AS Total_Likes, 
    SUM(comments+likes+shares) AS Total_Engagements,
	AVG(comments+likes+shares) AS Average_Engagement FROM posts
GROUP BY  Hour_of_Day
ORDER BY  Hour_of_Day;
-- BY by day_of_week and hour_of_day
SELECT 
	DAYNAME(post_date) AS Day_of_Week, 
	HOUR(post_time) AS Hour_of_Day,
	COUNT(*) AS Total_Posts, SUM( shares) AS Total_Shares,
    SUM(comments) AS Total_Comments,SUM(likes) AS Total_Likes, 
    SUM(comments+likes+shares) AS Total_Engagements,
    AVG(comments+likes+shares) AS Average_Engagement FROM posts
GROUP BY  Day_of_Week,  Hour_of_Day
ORDER BY  FIELD(Day_of_Week,'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'),Hour_of_Day;

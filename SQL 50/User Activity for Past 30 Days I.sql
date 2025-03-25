CREATE DATABASE L1141
USE L1141

CREATE TABLE Activity (
    user_id INT,
    session_id INT,
    activity_date DATE,
    activity_type VARCHAR(100));

INSERT INTO Activity (user_id, session_id, activity_date, activity_type)
VALUES	(1, 1, '2019-07-20', 'open_session'),
		(1, 1, '2019-07-20', 'scroll_down'),
		(1, 1, '2019-07-20', 'end_session'),
		(2, 4, '2019-07-20', 'open_session'),
		(2, 4, '2019-07-21', 'send_message'),
		(2, 4, '2019-07-21', 'end_session'),
		(3, 2, '2019-07-21', 'open_session'),
		(3, 2, '2019-07-21', 'send_message'),
		(3, 2, '2019-07-21', 'end_session'),
		(4, 3, '2019-06-25', 'open_session'),
		(4, 3, '2019-06-25', 'end_session');


--Query for User Activity for Past 30 Days I
SELECT activity_date AS day, COUNT(DISTINCT USER_ID) AS active_users
FROM Activity
WHERE ACTIVITY_DATE <= '2019-07-27' AND DATEDIFF(DAY , ACTIVITY_DATE , '2019-07-27')<30
GROUP BY activity_date

Select activity_date,COUNT(*) FROM Activity
GROUP BY activity_date

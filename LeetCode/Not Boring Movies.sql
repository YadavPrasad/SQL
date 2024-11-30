CREATE DATABASE L620
USE L620

CREATE TABLE Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(255),
    description VARCHAR(255),
    rating DECIMAL(3, 1)
);

INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9),
(2, 'Science', 'fiction', 8.5),
(3, 'irish', 'boring', 6.2),
(4, 'Ice song', 'Fantacy', 8.6),
(5, 'House card', 'Interesting', 9.1);

SELECT *
FROM Cinema
WHERE DESCRIPTION != 'BORING'
AND id % 2 = 1
ORDER BY rating DESC

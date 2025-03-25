CREATE DATABASE L1211
USE L1211

CREATE TABLE Queries (
    query_name VARCHAR(255),
    result VARCHAR(255),
    position INT CHECK (position BETWEEN 1 AND 500),
    rating INT CHECK (rating BETWEEN 1 AND 5)
);

INSERT INTO Queries (query_name, result, position, rating) VALUES 
('Dog', 'Golden Retriever', 1, 5),
('Dog', 'German Shepherd', 2, 5),
('Dog', 'Mule', 200, 1),
('Cat', 'Shirazi', 5, 2),
('Cat', 'Siamese', 3, 3),
('Cat', 'Sphynx', 7, 4);

--Query for queries quality and percentage
SELECT query_name, ROUND(AVG(CAST(rating AS FLOAT)/position),2) AS quality,
ROUND(COUNT(CASE WHEN rating<3 THEN 1 END)*100.00/COUNT(*),2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name
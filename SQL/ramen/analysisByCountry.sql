-- for analyizing by country the ramen data set

CREATE TABLE ramenByCountry(
Country VARCHAR(50),
CountOf5Stars INTEGER,
CountOf4Stars INTEGER,
CountOf3Stars INTEGER,
CountOf2Stars INTEGER,
CountOf1Stars INTEGER,
CountOf0Stars INTEGER);

INSERT INTO ramenByCountry (Country)
SELECT DISTINCT Country FROM ramen; 


-- doesnt work yet
INSERT INTO ramenByCountry (CountOf0Stars) 
SELECT COUNT(Stars) FROM ramen WHERE stars::REAL < 1 AND country='Hungary';

SELECT * FROM ramenByCountry;

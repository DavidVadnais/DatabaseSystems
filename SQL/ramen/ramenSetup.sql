-- The purpose of this script is to create a data table named ramen based off of the ramen data set

CREATE TABLE ramen (
Review INTEGER,
Brand VARCHAR(50),
Variety VARCHAR(5000),
Style VARCHAR(16),
Country VARCHAR(50),
Stars VARCHAR(10),
TopTen VARCHAR(16));

COPY ramen(Review ,
Brand,
Variety,
Style,
Country,
Stars,
TopTen)
FROM '/var/lib/neo4j/import/ramen-ratings.csv'
DELIMITER ','
CSV HEADER;

 SELECT * FROM ramen LIMIT 10;

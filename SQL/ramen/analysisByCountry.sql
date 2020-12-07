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
UPDATE ramenByCountry
SET    CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET    CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET    CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET    CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET    CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL < 5 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET    CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Hungary')
WHERE   country='Hungary';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Japan'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Japan'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Japan'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Japan'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Japan'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Japan')
WHERE   country='Japan';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Nigeria'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Nigeria'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Nigeria'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Nigeria'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Nigeria'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Nigeria')
WHERE   country='Nigeria';


UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Bangladesh'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Bangladesh'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Bangladesh'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Bangladesh'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Bangladesh'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Bangladesh')
WHERE   country='Bangladesh';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Indonesia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Indonesia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Indonesia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Indonesia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Indonesia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Indonesia')
WHERE   country='Indonesia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='China'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='China'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='China'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='China'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='China'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='China')
WHERE   country='China';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Sweden'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Sweden'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Sweden'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Sweden'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Sweden'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Sweden')
WHERE   country='Sweden';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Fiji'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Fiji'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Fiji'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Fiji'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Fiji'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Fiji')
WHERE   country='Fiji';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Pakistan'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Pakistan'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Pakistan'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Pakistan'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Pakistan'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Pakistan')
WHERE   country='Pakistan';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Netherlands'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Netherlands'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Netherlands'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Netherlands'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Netherlands'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Netherlands')
WHERE   country='Netherlands';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Brazil'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Brazil'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Brazil'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Brazil'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Brazil'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Brazil')
WHERE   country='Brazil';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='UK'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='UK'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='UK'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='UK'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='UK'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='UK')
WHERE   country='UK';


UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Australia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Australia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Australia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Australia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Australia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Australia')
WHERE   country='Australia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Cambodia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Cambodia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Cambodia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Cambodia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Cambodia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Cambodia')
WHERE   country='Cambodia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Germany'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Germany'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Germany'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Germany'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Germany'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Germany')
WHERE   country='Germany';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Singapore'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Singapore'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Singapore'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Singapore'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Singapore'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Singapore')
WHERE   country='Singapore';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Canada'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Canada'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Canada'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Canada'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Canada'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Canada')
WHERE   country='Canada';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Finland'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Finland'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Finland'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Finland'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Finland'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Finland')
WHERE   country='Finland';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='South Korea'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='South Korea'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='South Korea'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='South Korea'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='South Korea'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='South Korea')
WHERE   country='South Korea';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Colombia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Colombia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Colombia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Colombia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Colombia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Colombia')
WHERE   country='Colombia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Sarawak'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Sarawak'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Sarawak'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Sarawak'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Sarawak'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Sarawak')
WHERE   country='Sarawak';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='India'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='India'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='India'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='India'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='India'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='India')
WHERE   country='India';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Estonia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Estonia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Estonia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Estonia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Estonia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Estonia')
WHERE   country='Estonia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Myanmar'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Myanmar'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Myanmar'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Myanmar'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Myanmar'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Myanmar')
WHERE   country='Myanmar';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Vietnam'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Vietnam'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Vietnam'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Vietnam'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Vietnam'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Vietnam')
WHERE   country='Vietnam';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Thailand'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Thailand'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Thailand'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Thailand'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Thailand'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Thailand')
WHERE   country='Thailand';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Dubai'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Dubai'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Dubai'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Dubai'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Dubai'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Dubai')
WHERE   country='Dubai';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Holland'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Holland'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Holland'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Holland'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Holland'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Holland')
WHERE   country='Holland';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Mexico'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Mexico'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Mexico'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Mexico'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Mexico'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Mexico')
WHERE   country='Mexico';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Philippines'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Philippines'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Philippines'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Philippines'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Philippines'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Philippines')
WHERE   country='Philippines';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Hong Kong'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Hong Kong'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Hong Kong'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Hong Kong'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Hong Kong'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Hong Kong')
WHERE   country='Hong Kong';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Taiwan'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Taiwan'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Taiwan'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Taiwan'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Taiwan'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Taiwan')
WHERE   country='Taiwan';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Poland'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Poland'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Poland'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Poland'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Poland'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Poland')
WHERE   country='Poland';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Malaysia'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Malaysia'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Malaysia'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Malaysia'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Malaysia'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Malaysia')
WHERE   country='Malaysia';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Ghana'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Ghana'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Ghana'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Ghana'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Ghana'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Ghana')
WHERE   country='Ghana';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND country='Nepal'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND country='Nepal'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND country='Nepal'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND country='Nepal'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND country='Nepal'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND country='Nepal')
WHERE   country='Nepal';

UPDATE ramenByCountry
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND (country='United States' OR country='USA')),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND (country='United States' OR country='USA')),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND (country='United States' OR country='USA')),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND (country='United States' OR country='USA')),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND (country='United States' OR country='USA')),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND (country='United States' OR country='USA'))
WHERE   country='United States';
                                                                           
DELETE FROM ramenByCountry WHERE country='USA';

SELECT * FROM ramenByCountry;

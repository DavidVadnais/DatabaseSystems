CREATE TABLE ramenByCup(
Cup VARCHAR(50),
CountOf5Stars INTEGER,
CountOf4Stars INTEGER,
CountOf3Stars INTEGER,
CountOf2Stars INTEGER,
CountOf1Stars INTEGER,
CountOf0Stars INTEGER);

INSERT INTO ramenByCup (cup)
SELECT DISTINCT style FROM ramen;

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Bowl'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Bowl'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Bowl'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Bowl'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Bowl'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Bowl')
WHERE   cup='Bowl';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Can'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Can'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Can'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Can'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Can'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Can')
WHERE   cup='Can';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Bar'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Bar'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Bar'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Bar'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Bar'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Bar')
WHERE   cup='Bar';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Tray'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Tray'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Tray'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Tray'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Tray'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Tray')
WHERE   cup='Tray';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Pack'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Pack'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Pack'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Pack'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Pack'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Pack')
WHERE   cup='Pack';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Box'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Box'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Box'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Box'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Box'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Box')
WHERE   cup='Box';

UPDATE ramenByCup
SET CountOf0Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL <= 1 AND style='Cup'),
CountOf1Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 1 AND stars::REAL <= 2 AND style='Cup'),
CountOf2Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 2 AND stars::REAL <= 3 AND style='Cup'),
CountOf3Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 3 AND stars::REAL <= 4 AND style='Cup'),
CountOf4Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL > 4 AND stars::REAL <= 5 AND style='Cup'),
CountOf5Stars = (SELECT COUNT(Stars) FROM ramen WHERE stars::REAL = 5 AND style='Cup')
WHERE   cup='Cup';

select * from ramenByCup;

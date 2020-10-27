-- this column will hold iris guesses
ALTER TABLE iris
ADD aGuess varchar(50);

-- do setosa
UPDATE iris
SET aGuess = 'setosa'
WHERE iris.petalLength < 2.5;

-- Versicolor
UPDATE iris
SET aGuess = 'versicolor'
WHERE iris.petalwidth > 1.6 AND iris.aGuess IS NULL;

-- Virginica
UPDATE iris
SET aGuess = 'virginica'
WHERE iris.aGuess IS NULL;

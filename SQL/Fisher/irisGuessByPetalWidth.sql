-- drop aGuess Column
ALTER TABLE iris
DROP aGuess;

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
WHERE iris.petalwidth < 1.7 AND iris.aGuess IS NULL;

-- Virginica
UPDATE iris
SET aGuess = 'virginica'
WHERE iris.aGuess IS NULL;

-- How many flowers missattributed 
SELECT COUNT(*) 
FROM iris
WHERE iris.species <> iris.aguess;

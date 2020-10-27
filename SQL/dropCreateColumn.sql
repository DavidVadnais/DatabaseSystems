-- drop aGuess Column
ALTER TABLE iris
DROP aGuess;

-- this column will hold iris guesses
ALTER TABLE iris
ADD aGuess varchar(50);

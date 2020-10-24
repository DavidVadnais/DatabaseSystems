// classify flowers

//This should cover setosa
MATCH (node) 
WHERE node.petalLength < 2.5
SET node.aGuess = "setosa";

//TODO if for versicolor or virginica

//TODO else if node.aGuess isnt set set to remaining flower

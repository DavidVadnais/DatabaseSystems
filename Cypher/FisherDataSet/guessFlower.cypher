// classify flowers

//This should cover setosa
MATCH (node) 
WHERE node.petalLength < 2.5
SET node.aGuess = "setosa";

//TODO if virginica
MATCH (node) 
WHERE node.petalWidth < 1.6 AND node.aGuess <> "setosa"
SET node.aGuess = "virginica";

//TODO else if node.aGuess isnt set set to remaining flower
MATCH (node) 
WHERE node.aGuess = "noGuessMade"
SET node.aGuess = "versicolor";

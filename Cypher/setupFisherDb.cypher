LOAD CSV WITH HEADERS FROM 'file:///iris.csv'AS line
CREATE (:Flower { sepalLength: toFloat(line.SepalLength), sepalWidth: toFloat(line.SepalWidth), petalLength: toFloat(line.PetalLength),
 petalWidth: toFloat(line.PetalWidth), species: line.Species, cluster: line.cluster});

//Retype flowers
MATCH (line) 
WHERE line.species = 'virginica'
CREATE (:Virginica { sepalLength: line.sepalLength, sepalWidth: line.sepalWidth,petalLength: line.petalLength,petalWidth: line.petalWidth,species: line.species, cluster: line.cluster, aGuess: 'noGuessMade'})
DELETE line;

MATCH (line) 
WHERE line.species = 'versicolor'
CREATE (:Versicolor { sepalLength: line.sepalLength, sepalWidth: line.sepalWidth,petalLength: line.petalLength,petalWidth: line.petalWidth,species: line.species, cluster: line.cluster, aGuess: 'noGuessMade'})
DELETE line;

MATCH (line) 
WHERE line.species = 'setosa'
CREATE (:Setosa { sepalLength: line.sepalLength, sepalWidth: line.sepalWidth,petalLength: line.petalLength,petalWidth: line.petalWidth,species: line.species, cluster: line.cluster, aGuess: 'noGuessMade'})
DELETE line;
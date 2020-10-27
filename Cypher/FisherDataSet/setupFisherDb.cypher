LOAD CSV WITH HEADERS FROM 'file:///iris.csv'AS line
CREATE (:Flower { sepalLength: toFloat(line.SepalLength), sepalWidth: toFloat(line.SepalWidth), petalLength: toFloat(line.PetalLength),
 petalWidth: toFloat(line.PetalWidth), species: line.Species, cluster: line.cluster, aGuess: 'noGuessMade'});

LOAD CSV WITH HEADERS FROM 'file:///iris.csv'AS line
CREATE (:Flower { sepalLength: line.SepalLength, sepalWidth: line.SepalWidth,petalLength: line.PetalLength,petalWidth: line.PetalWidth,species: line.Species, cluster: line.cluster})

//Retype flowers
MATCH (line) 
WHERE line.species = 'virginica'
CREATE (:Virginica { sepalLength: line.SepalLength, sepalWidth: line.SepalWidth,petalLength: line.PetalLength,petalWidth: line.PetalWidth,species: line.Species, cluster: line.cluster})
DELETE line;

MATCH (line) 
WHERE line.species = 'versicolor'
CREATE (:Versicolor { sepalLength: line.SepalLength, sepalWidth: line.SepalWidth,petalLength: line.PetalLength,petalWidth: line.PetalWidth,species: line.Species, cluster: line.cluster})
DELETE line;

MATCH (line) 
WHERE line.species = 'setosa'
CREATE (:Setosa { sepalLength: line.SepalLength, sepalWidth: line.SepalWidth,petalLength: line.PetalLength,petalWidth: line.PetalWidth,species: line.Species, cluster: line.cluster})
DELETE line
//hw2

///////////////// DATA Init
// Delete all
MATCH(n)
DETACH DELETE n;

// LOAD DATA
LOAD CSV WITH HEADERS FROM 'file:///iris.csv'AS line
CREATE (:Flower { sepalLength: toFloat(line.SepalLength), sepalWidth: toFloat(line.SepalWidth), petalLength: toFloat(line.PetalLength),
 petalWidth: toFloat(line.PetalWidth), species: line.Species, cluster: line.cluster, aGuess: 'noGuessMade'});

CREATE(:Setosa);
CREATE(:Virginica);
CREATE(:Versicolor);

////GUESSSING SECTION
//setosa
MATCH (thisFlower:Flower) 
WHERE thisFlower.petalLength < 2.5
SET  thisFlower.aGuess = "setosa"
RETURN thisFlower;

MATCH (thisFlower:Flower) , (answerFlower:Setosa)
WHERE thisFlower.petalLength < 2.5
CREATE (thisFlower)-[: Guessed]->(answerFlower) 
RETURN thisFlower , answerFlower;

// if virginica
MATCH (node: Flower) 
WHERE node.petalWidth > 1.6 AND node.aGuess <> "setosa"
SET node.aGuess = "virginica";

MATCH (thisFlower:Flower) , (answerFlower:Virginica)
WHERE thisFlower.petalWidth > 1.6 AND thisFlower.aGuess <> "setosa"
CREATE (thisFlower)-[: Guessed]->(answerFlower) 
RETURN thisFlower , answerFlower;

//else if node.aGuess isnt set set to remaining flower
MATCH (node) 
WHERE node.aGuess = "noGuessMade"
SET node.aGuess = "versicolor";

MATCH (thisFlower:Flower) , (answerFlower:Versicolor)
WHERE thisFlower.aGuess = "versicolor"
CREATE (thisFlower)-[: Guessed]->(answerFlower) 
RETURN thisFlower , answerFlower;

/////// ACTUAL SECTION
MATCH (thisFlower) ,(answerFlower:Setosa)
WHERE thisFlower.species = "setosa"
CREATE (thisFlower)-[: Correct]->(answerFlower) 
RETURN thisFlower , answerFlower;
        
MATCH (thisFlower) ,(answerFlower:Virginica)
WHERE thisFlower.species = "virginica"
CREATE (thisFlower)-[: Correct]->(answerFlower) 
RETURN thisFlower , answerFlower;
        
MATCH (thisFlower) ,(answerFlower:Versicolor)
WHERE thisFlower.species = "versicolor"
CREATE (thisFlower)-[: Correct]->(answerFlower) 
RETURN thisFlower , answerFlower;

        
//////// ANALYSIS
MATCH (thisFlower) 
WHERE thisFlower.species <> thisFlower.aGuess
RETURN thisFlower, count(*) ;

CREATE (classified); 
CREATE (missclassified);


//Work on this
MATCH (n) , (classified)
WHERE n.species = n.aGuess
CREATE (n)-[: Relation]->(classified)
RETURN n , classified;

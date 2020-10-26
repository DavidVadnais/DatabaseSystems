//WIP
CREATE (l:Lived);
CREATE (d:Died);

MATCH (p:Passenger) , (status: Lived)
WHERE p.survived = 1
CREATE (p)-[r:RELTYPE]->(status)
RETURN r;

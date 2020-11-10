//////////////With https://neo4j.com/developer/kb/using-cypher-and-apoc-to-move-a-property-value-to-a-label/
// 
MATCH (n:Ramen) 
CALL apoc.create.addLabels( id(n), [ n.Country ] )
YIELD node WITH node
REMOVE node.Country
RETURN node;


MATCH (n:Ramen) 
CALL apoc.create.node( [ n.Brand ], {imABrand: "True"} )
YIELD node 
RETURN node;

///STILL IN WORK
MATCH (a {imABrand: "True"}) RETURN LABELS(a)

MATCH (a {imABrand: "True"}) 
WHERE LABELS(a) = LABELS(({imABrand: "True"}))
CALL apoc.refactor.mergeNodes([a,b]) 
YIELD node
RETURN node;

MATCH (n:Ramen) , (a {imABrand: "True"})
WHERE [n.Brand] = LABELS(a)
CREATE (n)-[: instanceOf]->(a)
RETURN (n)-->() LIMIT 5

// 3 deep
MATCH (a:OneStar)<-[:NumStars]-(b)-[:instanceOf]->(c)
RETURN  a, b, c;

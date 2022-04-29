MATCH (n) RETURN n LIMIT 25

RETURN gds.version()


MATCH (a:ATOM),(b:ATOM)
WHERE a.pdbID <> b.pdbID
RETURN gds.similarity.cosine(
  [a.x, a.y, a.z],
  [b.x, b.y, b.z]
) AS Similarity

MATCH (a:ATOM),(b:ATOM)
WHERE a.pdbID <> b.pdbID
RETURN gds.similarity.euclidean(
  [a.x, a.y, a.z],
  [b.x, b.y, b.z]
) AS Similarity

MATCH (a:ATOM),(b:ATOM)
WHERE 
  gds.similarity.euclidean(
  [a.x, a.y, a.z],
  [b.x, b.y, b.z]
  ) < 0.05
CREATE (a)-[r:Near {weight: gds.similarity.euclidean(
  [a.x, a.y, a.z],
  [b.x, b.y, b.z]
  )}]->(b)

//page rank
CALL gds.graph.project(
  'myGraph',
  'ATOM',
{
  pdbID
}
  'Near',
  {
    relationshipProperties: 'weight'
  }
)

CALL gds.pageRank.stream('myGraph', {
  maxIterations: 20,
  dampingFactor: 0.85,
  relationshipWeightProperty: 'weight'
})
YIELD nodeId, score
RETURN gds.util.asNode(pdbID).name AS name, score
ORDER BY score DESC, name ASC


CALL gds.pageRank.stream('myGraph', {
  maxIterations: 20,
  dampingFactor: 0.85,
  relationshipWeightProperty: 'weight'
})
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).pdbID AS name, score
ORDER BY score DESC, name ASC

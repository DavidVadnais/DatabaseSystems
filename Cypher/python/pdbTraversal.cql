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


//knn
CALL gds.graph.project(
  'myGraph2',
  {ATOM:{
	    label: 'ATOM',
            properties: ['x','y','z']
}}
,'*');



CALL gds.knn.stream('myGraph2', {
    topK: 1,
    nodeProperties: [
        'x',
        'y',
	'z'
    ],
    // The following parameters are set to produce a deterministic result
    randomSeed: 1337,
    concurrency: 1,
    sampleRate: 1.0,
    deltaThreshold: 0.0
})
YIELD node1, node2, similarity
RETURN gds.util.asNode(node1).pdbID AS pdbID, gds.util.asNode(node2).pdbID AS pdbID2, similarity
ORDER BY similarity DESCENDING, pdbID, pdbID2


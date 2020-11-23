// Verify install
RETURN gds.version()

//gd start
CALL gds.graph.create(
    'all-ramen-graph',
    'Ramen',
    'from'
)
YIELD graphName, nodeCount, relationshipCount, createMillis;

// Betweenness centrality is a way of detecting the amount of influence a node has over the flow of information in a graph. 
// It is often used to find nodes that serve as a bridge from one part of a graph to another. 

//estimate usage
CALL gds.pageRank.write.estimate('all-ramen-graph', {
  writeProperty: 'pageRank',
  maxIterations: 20,
  dampingFactor: 0.85
})
YIELD nodeCount, relationshipCount, bytesMin, bytesMax, requiredMemory

CALL gds.pageRank.stream('all-ramen-graph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS name, score
ORDER BY score DESC, name ASC
                                 
                                 
                             
CALL gds.graph.create(
    'all-country-graph',
    'Country',
    'from'
)
YIELD graphName, nodeCount, relationshipCount, createMillis;

CALL gds.pageRank.stream('all-country-graph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).name AS name, score
ORDER BY score DESC, name ASC

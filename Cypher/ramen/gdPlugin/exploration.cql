// Verify install
RETURN gds.version()

//gd start
CALL gds.graph.create(
    'one-star-graph',
    'Ramen',
    'from'
)
YIELD graphName, nodeCount, relationshipCount, createMillis;

// Betweenness centrality is a way of detecting the amount of influence a node has over the flow of information in a graph. 
// It is often used to find nodes that serve as a bridge from one part of a graph to another. 

CALL gds.betweenness.stream(
  graphName: String,
  configuration: Map
)
YIELD
  nodeId: Integer,
  score: Float

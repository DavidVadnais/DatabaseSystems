// show a path from cup style to stars
// other node type : Brand, Country
MATCH (a:OneStar)<-[r]-(b)<-[r2]-(c:Style)
RETURN r,a,b,c,r2;

//Show closeness score
MATCH (p1:Ramen {Variety: 'Chikara Brand Udon Mushroom Flavor', Brand: 'Sakura Noodle'})
MATCH (p2:Ramen {Variety: 'Chikara Brand Udon Chicken Flavor', Brand: 'Sakura Noodle'})
RETURN gds.alpha.linkprediction.totalNeighbors(p1, p2) AS score
       
//EVAL
CALL gds.graph.drop('all-graph') YIELD graphName;
       
CALL gds.graph.create(
    'all-graph',
    '*',
    '*'
)
YIELD graphName, nodeCount, relationshipCount, createMillis;

CALL gds.pageRank.stream('all-graph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId) AS name, score
ORDER BY score DESC, name ASC
 
       
 ////// WIP
CALL gds.graph.drop('five-star-graph') YIELD graphName;
       
CALL gds.graph.create(
    'five-star-graph',
    'FiveStar',
    '*'
)
YIELD graphName, nodeCount, relationshipCount, createMillis;

CALL gds.pageRank.stream('five-star-graph')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId) AS name, score
ORDER BY score DESC, name ASC

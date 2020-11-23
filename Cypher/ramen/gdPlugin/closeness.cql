MATCH (p1:Ramen {Variety: 'Chikara Brand Udon Mushroom Flavor', Brand: 'Sakura Noodle'})
MATCH (p2:Ramen {Variety: 'Chikara Brand Udon Chicken Flavor', Brand: 'Sakura Noodle'})
RETURN gds.alpha.linkprediction.totalNeighbors(p1, p2, {relationshipQuery: "Stars"}) AS score

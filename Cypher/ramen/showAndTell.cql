//
MATCH (a:OneStar)<-[r]-(b)<-[r2]-(c:Style)
RETURN r,a,b,c,r2;

MATCH (p1:Ramen {Variety: 'Chikara Brand Udon Mushroom Flavor', Brand: 'Sakura Noodle'})
MATCH (p2:Ramen {Variety: 'Chikara Brand Udon Chicken Flavor', Brand: 'Sakura Noodle'})
RETURN gds.alpha.linkprediction.totalNeighbors(p1, p2) AS score

MATCH (p1:Ramen {Variety: 'Chikara Brand Udon Mushroom Flavor', Brand: 'Sakura Noodle'}) return p1;
//{"Brand":"Sakura Noodle","Stars":3.75,"Country":"USA","Style":"Pack","Variety":"Chikara Brand Udon Mushroom Flavor"} 
//(1,3.75,1,1,1)

MATCH (p2:Ramen {Variety: 'Chikara Brand Udon Chicken Flavor', Brand: 'Sakura Noodle'}) return p2;
// {"Brand":"Sakura Noodle","Stars":3.75,"Country":"USA","Style":"Pack","Variety":"Chikara Brand Udon Chicken Flavor"}  
//(1,3.75,1,1,2)

RETURN gds.alpha.similarity.pearson([1,3.75,1,1,1],[1,3.75,1,1,2]) AS similarity

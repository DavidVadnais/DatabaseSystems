// Delete all
MATCH(n)
DETACH DELETE n;

// SETUP
LOAD CSV WITH HEADERS FROM 'file:///ramen-ratings.csv'AS line
CREATE (:Ramen { Review: toInteger(line.Review), Brand: line.Brand , Variety: line.Variety, Country: line.Country ,Stars: toFloat(line.Stars),
TopTen: line.TopTen, Style: line.Style});

CREATE(:ZeroStar),
  (:OneStar),
  (:TwoStar),
  (:ThreeStar),
  (:FourStar),
  (:FiveStar);

//WORK
//0
MATCH (thisRamen:Ramen) , (goal:ZeroStar)
WHERE thisRamen.Stars < 1
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen;

MATCH (thisRamen:Ramen) , (goal:ZeroStar)
WHERE thisRamen.Stars < 1
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen;

//1
MATCH (thisRamen:Ramen) , (goal:OneStar)
WHERE thisRamen.Stars < 2 AND thisRamen.Stars > 1
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen ;

MATCH (thisRamen:Ramen) , (goal:OneStar)
WHERE thisRamen.Stars < 2 AND thisRamen.Stars > 1
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen ;


//2
MATCH (thisRamen:Ramen) , (goal:TwoStar)
WHERE thisRamen.Stars < 3 AND thisRamen.Stars > 2
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen ;

MATCH (thisRamen:Ramen) , (goal:TwoStar)
WHERE thisRamen.Stars < 3 AND thisRamen.Stars > 2
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen ;

//3
MATCH (thisRamen:Ramen) , (goal:ThreeStar)
WHERE thisRamen.Stars < 4 AND thisRamen.Stars > 3
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen ;

MATCH (thisRamen:Ramen) , (goal:ThreeStar)
WHERE thisRamen.Stars < 4 AND thisRamen.Stars > 3
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen ;

//4
MATCH (thisRamen:Ramen) , (goal:FourStar)
WHERE thisRamen.Stars < 5 AND thisRamen.Stars > 4
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen ;

MATCH (thisRamen:Ramen) , (goal:FourStar)
WHERE thisRamen.Stars < 5 AND thisRamen.Stars > 4
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen ;

//5
MATCH (thisRamen:Ramen) , (goal:FiveStar)
WHERE thisRamen.Stars = 5 
CREATE (thisRamen)-[: NumStars]->(goal) 
RETURN thisRamen ;

MATCH (thisRamen:Ramen) , (goal:FiveStar)
WHERE thisRamen.Stars = 5 
CREATE (thisRamen)<-[: NumStars]-(goal) 
RETURN thisRamen ;


// Brand
MATCH p =(a:Ramen)
WITH DISTINCT a.Brand AS thisBrand
FOREACH (i IN thisBrand | CREATE (:Brand { Brand: i }));

MATCH (a:Ramen), (b:Brand)
WHERE a.Brand = b.Brand
CREATE (a)<-[:produces]-(b);

MATCH (a:Ramen), (b:Brand)
WHERE a.Brand = b.Brand
CREATE (a)-[:from]->(b);


// vountry
MATCH p =(a:Ramen)
WITH DISTINCT a.Country AS thisCountry
FOREACH (i IN thisCountry | CREATE (:Country { Country: i }));

MATCH (a:Ramen), (b:Country)
WHERE a.Country = b.Country
CREATE (a)<-[:from]-(b);

// style

MATCH p =(a:Ramen)
WITH DISTINCT a.Style AS thisStyle
FOREACH (i IN thisStyle | CREATE (:Style { Style: i }));

MATCH (a:Ramen), (b:Style)
WHERE a.Style = b.Style
CREATE (a)<-[:produces]-(b);

MATCH (a:Ramen), (b:Style)
WHERE a.Style = b.Style
CREATE (a)-[:from]->(b);

// Delete all
MATCH(n)
DETACH DELETE n;

// SETUP
LOAD CSV WITH HEADERS FROM 'file:///ramen-ratings.csv'AS line
CREATE (:Ramen { Review: toFloat(line.Review), Brand: line.Brand , Variety: line.Variety, Country: line.Country ,Stars: toFloat(line.Stars),
TopTen: line.TopTen});

CREATE(:ZeroStar),
  (:OneStar),
  (:TwoStar),
  (:ThreeStar),
  (:FourStar),
  (:FiveStar);

//WORK
//0
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars < 1
CREATE (thisRamen)-[: NumStars]->(:ZeroStar) 
RETURN thisRamen;

//1
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars < 2 AND thisRamen.Stars > 1
CREATE (thisRamen)-[: NumStars]->(:OneStar) 
RETURN thisRamen ;

//2
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars < 3 AND thisRamen.Stars > 2
CREATE (thisRamen)-[: NumStars]->(:TwoStar) 
RETURN thisRamen ;

//3
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars < 4 AND thisRamen.Stars > 3
CREATE (thisRamen)-[: NumStars]->(:ThreeStar) 
RETURN thisRamen ;

//4
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars < 5 AND thisRamen.Stars > 4
CREATE (thisRamen)-[: NumStars]->(:FourStar) 
RETURN thisRamen ;

//5
MATCH (thisRamen:Ramen) 
WHERE thisRamen.Stars = 5 
CREATE (thisRamen)-[: NumStars]->(:FiveStar) 
RETURN thisRamen ;

///// Analysis

//
MATCH (a:OneStar)-[r]->(b)
RETURN r,a,b ;

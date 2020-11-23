MATCH p =(a:Ramen)
WITH DISTINCT a.Style AS thisStyle
FOREACH (i IN thisStyle | CREATE (:Style { Style: i }));

MATCH (a:Ramen), (b:Style)
WHERE a.Style = b.Style
CREATE (a)<-[:produces]-(b);

MATCH (a:Ramen), (b:Style)
WHERE a.Style = b.Style
CREATE (a)-[:from]->(b);
                                  
//
MATCH (a:OneStar)<-[r]-(b)<-[r2]-(c)
RETURN r,a,b,c,r2;

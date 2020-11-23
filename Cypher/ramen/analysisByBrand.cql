MATCH p =(a:Ramen)
WITH DISTINCT a.Brand AS thisBrand
FOREACH (i IN thisBrand | CREATE (:Brand { Brand: i }));

MATCH (a:Ramen), (b:Brand)
WHERE a.Brand = b.Brand
CREATE (a)<-[:produces]-(b);

MATCH (a:Ramen), (b:Brand)
WHERE a.Brand = b.Brand
CREATE (a)-[:from]->(b);
                                  
//
MATCH (a:OneStar)<-[r]-(b)<-[r2]-(c)
RETURN r,a,b,c,r2;

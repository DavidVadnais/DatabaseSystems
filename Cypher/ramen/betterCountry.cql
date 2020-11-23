MATCH p =(a:Ramen)
WITH DISTINCT a.Country AS thisCountry
FOREACH (i IN thisCountry | CREATE (:Country { Country: i }));

MATCH (a:Ramen), (b:Country)
WHERE a.Country = b.Country
CREATE (a)<-[:from]-(b)

//
MATCH (a:OneStar)<-[r]-(b)<-[r2]-(c)
RETURN r,a,b,c,r2;

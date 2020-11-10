MATCH (a:OneStar)<-[:NumStars]-(b)
RETURN  a, b;

// display all nodes of a brand
MATCH (a {Brand: 'Mama'})
RETURN  (a)-->();

// display nation
MATCH (a {Country: 'Japan'})
RETURN  (a)-->();
       

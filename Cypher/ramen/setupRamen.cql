LOAD CSV WITH HEADERS FROM 'file:///ramen-ratings.csv'AS line
CREATE (:Ramen { Review: line.Review, Brand: line.Brand , Variety: line.Variety, Country: line.Country ,Stars: line.Stars,
TopTen: line.TopTen
});


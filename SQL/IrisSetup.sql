CREATE TABLE iris (
SepalLength REAL,
SepalWidth REAL,
PetalWidth REAL,
Species VARCHAR(50),
cluster VARCHAR(50));

COPY iris(SepalLength,
SepalWidth, PetalLength,
PetalWidth,
Species,
cluster)
FROM '/var/lib/neo4j/import/iris.csv'
DELIMITER ','
CSV HEADER;

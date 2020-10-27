LOAD CSV WITH HEADERS FROM 'file:///titanic.csv'AS line
CREATE (:Passenger { pclass: line.pclass, survived: line.survived , name: line.name, sex: line.sex ,age: line.age,
sibsp: line.sibsp, parch: line.parch, ticket: line.ticket, fare: line.fare , cabin: line.cabin , embarked: line.embarked,
boat: line.boat, body: line.body,homeDest: line.homeDest
});


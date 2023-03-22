MATCH (n) 
WHERE ID(n) = 3
SET n.age = 24, n.height = 2.02
RETURN n

MATCH (james)
WHERE ID(n) = 3
SET james:REF
RETURN james

MATCH (james {name: "LeBron James"}) - [contract:PLAYS_FOR] -> (:TEAM)
SET contract.salary = 60000000

MATCH (james)
WHERE ID(n) = 3
REMOVE james:REF
RETURN james

MATCH (james)
WHERE ID(n) = 3
REMOVE james.age
RETURN james
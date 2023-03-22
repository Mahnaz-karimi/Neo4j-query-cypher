// Deleting a Node 
MATCH(morant {name: "Ja Morant"})
DELETE morant

// Delete node and relationships
MATCH(morant {name: "Ja Morant"})
DETACH DELETE morant

// Delete relationship
MATCH(embid {name: "Joel Embiid"}) - [rel:PLAYS_FOR] -> (:TEAM)
DELETE rel
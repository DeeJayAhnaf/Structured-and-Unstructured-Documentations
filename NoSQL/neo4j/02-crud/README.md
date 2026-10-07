# Neo4j CRUD

## Create

```cypher
CREATE (s:Student {id: 5, name: 'Karthik', age: 24}) RETURN s;
```

## Read

```cypher
MATCH (s:Student) RETURN s;
MATCH (s:Student {id: 1}) RETURN s;
```

## Update

```cypher
MATCH (s:Student {id: 1})
SET s.age = 23
RETURN s;
```

## Add property

```cypher
MATCH (s:Student {id: 1})
SET s.email = 'arun@example.com'
RETURN s;
```

## Delete

```cypher
MATCH (s:Student {id: 5})
DELETE s;
```

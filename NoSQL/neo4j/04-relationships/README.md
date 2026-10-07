# Neo4j Relationships

## Create courses

```cypher
CREATE
  (c1:Course {code: 'DS101', name: 'Data Science', credits: 4}),
  (c2:Course {code: 'ML101', name: 'Machine Learning', credits: 4}),
  (c3:Course {code: 'DB101', name: 'Database Management', credits: 3})
RETURN c1, c2, c3;
```

## Create relationship

```cypher
MATCH (s:Student {id: 1}), (c:Course {code: 'DS101'})
CREATE (s)-[:ENROLLED_IN]->(c)
RETURN s, c;
```

## Query relationships

```cypher
MATCH (s:Student)-[r:ENROLLED_IN]->(c:Course)
RETURN s, r, c;
```

# Neo4j Basics

Neo4j is a graph database. Data is represented using nodes, properties and relationships.

## Core Cypher pattern

```cypher
(node:Label {property: value})
```

Example:

```cypher
CREATE (s:Student {id: 1, name: 'Arun', department: 'Data Science', age: 22})
RETURN s;
```

## Read all students

```cypher
MATCH (s:Student)
RETURN s;
```

# Neo4j Query Practice

## Students in Data Science

```cypher
MATCH (s:Student)
WHERE s.department = 'Data Science'
RETURN s.name, s.age;
```

## Students and their courses

```cypher
MATCH (s:Student)-[:ENROLLED_IN]->(c:Course)
RETURN s.name, c.name;
```

## Courses of Rahul

```cypher
MATCH (s:Student {name: 'Rahul'})-[:ENROLLED_IN]->(c:Course)
RETURN c.code, c.name;
```

## Count students

```cypher
MATCH (s:Student)
RETURN count(s) AS totalStudents;
```

## Count enrollments by course

```cypher
MATCH (s:Student)-[:ENROLLED_IN]->(c:Course)
RETURN c.name, count(s) AS students
ORDER BY students DESC;
```

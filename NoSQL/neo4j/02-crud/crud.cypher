CREATE (s:Student {id: 5, name: 'Karthik', department: 'Data Science', age: 24}) RETURN s;

MATCH (s:Student {id: 1}) SET s.age = 23 RETURN s;

MATCH (s:Student {id: 1}) SET s.email = 'arun@example.com' RETURN s;

MATCH (s:Student {id: 5}) DELETE s;

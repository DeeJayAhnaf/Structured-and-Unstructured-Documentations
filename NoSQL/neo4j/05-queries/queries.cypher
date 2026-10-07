MATCH (s:Student) WHERE s.department = 'Data Science' RETURN s.name, s.age;

MATCH (s:Student)-[:ENROLLED_IN]->(c:Course) RETURN s.name, c.name;

MATCH (s:Student {name: 'Rahul'})-[:ENROLLED_IN]->(c:Course) RETURN c.code, c.name;

MATCH (s:Student) RETURN count(s) AS totalStudents;

MATCH (s:Student)-[:ENROLLED_IN]->(c:Course)
RETURN c.name, count(s) AS students
ORDER BY students DESC;

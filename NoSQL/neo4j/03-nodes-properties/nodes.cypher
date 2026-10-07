MATCH (s:Student)
RETURN s.name, s.department, s.age;

MATCH (s:Student)
WHERE s.department = 'Data Science'
RETURN s.name, s.department;

MATCH (s:Student)
WHERE s.age >= 22
RETURN s.name, s.age;

MATCH (s:Student)
RETURN s
ORDER BY s.age DESC;

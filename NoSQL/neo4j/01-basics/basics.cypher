CREATE (s:Student {
  id: 1,
  name: 'Arun',
  department: 'Data Science',
  age: 22
})
RETURN s;

CREATE
  (s1:Student {id: 2, name: 'Priya', department: 'Computer Science', age: 21}),
  (s2:Student {id: 3, name: 'Rahul', department: 'Data Science', age: 23}),
  (s3:Student {id: 4, name: 'Divya', department: 'Information Technology', age: 22})
RETURN s1, s2, s3;

MATCH (s:Student)
RETURN s;

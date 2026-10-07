# MongoDB CRUD Operations

CRUD = Create, Read, Update, Delete.

## Start

```javascript
show dbs
use studentDB
show collections
```

## Create collection

```javascript
db.createCollection("students")
```

## Insert one

```javascript
db.students.insertOne({
  rollNo: 101,
  name: "John",
  age: 20,
  department: "Data Science",
  cgpa: 8.9
})
```

## Insert many

```javascript
db.students.insertMany([
  { rollNo: 102, name: "Alice", age: 21, department: "AI", cgpa: 9.1 },
  { rollNo: 103, name: "David", age: 22, department: "Computer Science", cgpa: 8.5 },
  { rollNo: 104, name: "Sophia", age: 20, department: "Cyber Security", cgpa: 9.3 }
])
```

## Read

```javascript
db.students.find()
db.students.findOne({ name: "John" })
db.students.find({ department: "AI" })
db.students.find({ cgpa: { $gt: 9 } })
db.students.find({ age: { $gte: 21 } })
db.students.find({}, { _id: 0, name: 1, department: 1 })
```

## Update

```javascript
db.students.updateOne(
  { rollNo: 101 },
  { $set: { cgpa: 9.2 } }
)

db.students.updateMany(
  { department: "AI" },
  { $set: { active: true } }
)
```

## Delete

```javascript
db.students.deleteOne({ rollNo: 104 })
db.students.deleteMany({ active: true })
db.students.countDocuments()
```

## Drop

```javascript
db.students.drop()
db.dropDatabase()
```

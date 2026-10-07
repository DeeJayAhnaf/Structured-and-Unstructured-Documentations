# MongoDB Search & Query Operations

## Comparison operators

```javascript
$eq   $ne   $gt   $gte   $lt   $lte
```

## Logical operators

```javascript
$and   $or   $not   $nor
```

## Array/query operators

```javascript
$in   $nin   $all   $size   $elemMatch
```

## Examples

```javascript
db.students.find({ age: { $gte: 21 } })
db.students.find({ department: { $in: ["AI", "Data Science"] } })
db.students.find({ $or: [{ age: 20 }, { cgpa: { $gt: 9 } }] })
db.students.find({ skills: "Python" })
```

## Projection, sorting and limiting

```javascript
db.students.find({}, { _id: 0, name: 1, cgpa: 1 })
db.students.find().sort({ cgpa: -1 })
db.students.find().limit(3)
db.students.find().skip(3)
```

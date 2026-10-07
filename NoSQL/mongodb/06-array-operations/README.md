# MongoDB Array Operations

## Query arrays

```javascript
db.students.find({ skills: "Python" })
db.students.find({ skills: { $all: ["Python", "SQL"] } })
db.students.find({ skills: { $in: ["Python", "MongoDB"] } })
db.students.find({ skills: { $size: 3 } })
db.students.find({ skills: { $nin: ["MongoDB", "SQL"] } })
```

## Modify arrays

- `$push` adds an item
- `$each` adds multiple items with `$push`
- `$position` controls insertion position
- `$slice` keeps a limited number of array elements
- `$pull` removes matching elements
- `$pullAll` removes multiple specified values
- `$addToSet` adds only if the value is not already present

## Embedded documents

Use `$elemMatch` when multiple conditions must apply to the same array element.

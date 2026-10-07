# Indexing & Performance Optimization

An index is a data structure that helps MongoDB locate matching documents efficiently.

## Single-field index

```javascript
db.students.createIndex({ name: 1 })
```

## View indexes

```javascript
db.students.getIndexes()
```

## Explain query execution

```javascript
db.students.find({ name: "Priya" }).explain("executionStats")
```

Look at fields such as `winningPlan`, `executionStats.nReturned`, `totalKeysExamined`, and `totalDocsExamined`.

## Descending index

```javascript
db.students.createIndex({ marks: -1 })
```

## Compound index

```javascript
db.students.createIndex({ department: 1, marks: -1 })
```

This can support queries that filter by `department` and sort/filter using `marks`, subject to the query shape and index rules.

## Unique index

```javascript
db.students.createIndex({ student_id: 1 }, { unique: true })
```

## Drop an index

```javascript
db.students.dropIndex("name_1")
```

## Performance ideas

- Index fields used frequently in selective queries.
- Use compound indexes for common multi-field query patterns.
- Avoid creating unnecessary indexes because indexes consume storage and add write overhead.
- Use `explain("executionStats")` to inspect actual query execution.
- Do not assume an index is useful simply because it exists; inspect the query plan.

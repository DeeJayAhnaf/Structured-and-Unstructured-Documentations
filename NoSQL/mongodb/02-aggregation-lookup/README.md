# Aggregation & `$lookup`

Aggregation processes documents through a pipeline. Each stage transforms or filters the documents before passing them to the next stage.

## Core stages

- `$match` - filter documents
- `$group` - group and calculate values
- `$project` - select/reshape fields
- `$sort` - order results (`1` ascending, `-1` descending)
- `$limit` - keep first N documents
- `$skip` - skip documents
- `$unwind` - expand array elements
- `$count` - count results
- `$lookup` - join related collections

## Accumulators

`$sum`, `$avg`, `$min`, `$max`, `$first`, `$last`, `$push`, `$addToSet`, `$stdDevPop`, `$stdDevSamp`

## `$lookup`

`$lookup` combines documents from another collection using matching fields.

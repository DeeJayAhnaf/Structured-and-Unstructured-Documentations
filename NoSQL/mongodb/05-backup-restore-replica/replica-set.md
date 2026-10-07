# Replica Set Exam Notes

## Architecture

```text
                 ┌───────────────┐
                 │    Primary    │
                 │   :27017      │
                 └───────┬───────┘
                         │ replication
              ┌──────────┴──────────┐
              ▼                     ▼
      ┌───────────────┐     ┌───────────────┐
      │   Secondary   │     │   Secondary   │
      │   :27018      │     │   :27019      │
      └───────────────┘     └───────────────┘
```

## Commands to remember

```javascript
rs.initiate()
rs.status()
rs.conf()
db.hello()
```

A healthy three-member setup normally has one PRIMARY and two SECONDARY members.

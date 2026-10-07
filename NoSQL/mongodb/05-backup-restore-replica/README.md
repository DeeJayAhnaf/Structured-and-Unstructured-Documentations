# Backup, Restore & Replica Sets

## Backup

Run from a terminal:

```powershell
mongodump --host localhost --port 27017 --db college --out C:\MongoBackup
```

## Restore

```powershell
mongorestore --host localhost --port 27017 --db college C:\MongoBackup\college
```

If you intentionally want to replace the existing database, first verify that deleting it is safe:

```javascript
use college
db.dropDatabase()
```

## Three-node local replica set

Create three data directories:

```powershell
mkdir C:\mongodb\rs1
mkdir C:\mongodb\rs2
mkdir C:\mongodb\rs3
```

Start three `mongod` processes in separate terminals:

```powershell
mongod --port 27017 --dbpath "C:\mongodb\rs1" --replSet rs0
mongod --port 27018 --dbpath "C:\mongodb\rs2" --replSet rs0
mongod --port 27019 --dbpath "C:\mongodb\rs3" --replSet rs0
```

Connect to the first node:

```powershell
mongosh --port 27017
```

Initialize:

```javascript
rs.initiate({
  _id: "rs0",
  members: [
    { _id: 0, host: "127.0.0.1:27017" },
    { _id: 1, host: "127.0.0.1:27018" },
    { _id: 2, host: "127.0.0.1:27019" }
  ]
})
```

Check status:

```javascript
rs.status()
rs.status().members.forEach(member => print(member.name + " : " + member.stateStr))
db.hello()
```

Read from a secondary for testing:

```powershell
mongosh --port 27018
```

```javascript
use college
db.getMongo().setReadPref("secondary")
db.students.find()
```

## Important distinction

- Replica set = high availability and replication between MongoDB nodes.
- Dump/restore = backup and recovery mechanism.
- Import/export = data transfer at collection level.

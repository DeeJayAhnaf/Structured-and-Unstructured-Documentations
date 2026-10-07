# MongoDB Import & Export

These commands are run from the operating system terminal, not inside `mongosh`.

## JSON import

```powershell
mongoimport --uri="mongodb://localhost:27017/studentDB" --collection=students --file="C:\path\students.json" --jsonArray
```

## JSON export

```powershell
mongoexport --uri="mongodb://localhost:27017/studentDB" --collection=students --out="C:\MongoBackup\students.json" --jsonArray
```

## CSV export

```powershell
mongoexport --uri="mongodb://localhost:27017/studentDB" --collection=students --type=csv --fields=rollNo,name,department,cgpa --out="C:\MongoBackup\students.csv"
```

### Important

`mongoimport`/`mongoexport` move collection data. `mongodump`/`mongorestore` are used for database backup and restoration.

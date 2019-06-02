# MongoDB basic commands

## accessing our database
This is how we will enter or create our new database  
`use dbName`  

## getting database name (db pointer)
This is a pointer to get the name of our current database    
`db`  

## fetching all records
To get all records stored  
`db.dbName.find()`  

## counting all records
Counting records - also works with searching filters  
`db.dbName.find().count()`  

## fetching a specific record
Getting a specific record, where `key` is the result key and `value` is the desired filter. Here we can also use regular expressions to filter registers.  
`db.dbName.find({ key: value })`

## removing key from fetch
This is how we can hide some records' keys in our search - e.g. hidding the `_id` key in an open API search.  
`db.dbName.find({ key: value }, { _id: 0 })`  

## inserting new record
We can insert a single record:  
`db.dbName.insert({ key: value, key: value })`  

Or, an array with many record:
`db.dbName.insert([ { key: value, key: value }, { key: value, key: value } ])`  

## updating record
It may be tricky, but with Mongo you can erase keys doing an update like that:  
`db.dbName.update({ _id: 123 }, { key: value, key: value })`  

To prevent it, you shall use `$set`:  
`db.dbName.update({ _id: 123 }, { $set: { key: value, key: value } })`  

## removing record
**Beware**
To clear the database:  
`db.dbName.remove()`  

And to clear a single record:  
`db.dbName.remove({ key: value })`
As in search, you can use regular expressions here.

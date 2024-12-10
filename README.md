# PublishingDB

A MySQL relational DB project involving:

* Schema creation scripts defining tables, primary keys, foreign keys, and domains.

* SQL query solutions for advanced analytical tasks, such as identifying multi-genre publishers, filtering data by book formats, and analysing author-publisher relationships.

DB schema:

* Author(aID, aName, age, nationality)
* Publisher(pID, pName, address)
* PublishesWith (aID, pID, since)
* Book(bID, title, genre, bFormat)
* AuthoredBy(aID, bID)
* Sells(pID, bID, copiesAvailable, copiesSold)

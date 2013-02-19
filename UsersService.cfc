component output="false" hint="CFBuilder-Generated:Users"
{
	
	/*
	USERS SERVICES
	*/
	
	/* Add Users */
	Users function createUsers(Users item)
	{
		/* Auto-generated method
		  Insert a new record in Users */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Users */
	void function deleteUsers( USERS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { USERS_ID = USERS_ID };
		var item = entityLoad("Users",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Users */
	Users[] function getAllUsers()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Users");
	}

	/* Get All Paged Users */
	Users[] function getUsers_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Users",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Users */
	Users function getUsers( USERS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { USERS_ID = USERS_ID };
		return entityLoad("Users",primaryKeysMap,true);
	}

	/* Save Users */
	Users function updateUsers(Users item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Users */
		entitySave(item);
		return item;
	}

	/* Count Users */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Users",true);
	}

} 

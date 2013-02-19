component output="false" hint="CFBuilder-Generated:User_Activity"
{
	
	/*
	USER_ACTIVITY SERVICES
	*/
	
	/* Add User_Activity */
	User_Activity function createUser_Activity(User_Activity item)
	{
		/* Auto-generated method
		  Insert a new record in User_Activity */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove User_Activity */
	void function deleteUser_Activity( USER_ACTIVITY_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { USER_ACTIVITY_ID = USER_ACTIVITY_ID };
		var item = entityLoad("User_Activity",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All User_Activity */
	User_Activity[] function getAllUser_Activity()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("User_Activity");
	}

	/* Get All Paged User_Activity */
	User_Activity[] function getUser_Activity_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("User_Activity",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get User_Activity */
	User_Activity function getUser_Activity( USER_ACTIVITY_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { USER_ACTIVITY_ID = USER_ACTIVITY_ID };
		return entityLoad("User_Activity",primaryKeysMap,true);
	}

	/* Save User_Activity */
	User_Activity function updateUser_Activity(User_Activity item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update User_Activity */
		entitySave(item);
		return item;
	}

	/* Count User_Activity */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from User_Activity",true);
	}

} 

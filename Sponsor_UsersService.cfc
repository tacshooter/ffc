component output="false" hint="CFBuilder-Generated:Sponsor_Users"
{
	
	/*
	SPONSOR_USERS SERVICES
	*/
	
	/* Add Sponsor_Users */
	Sponsor_Users function createSponsor_Users(Sponsor_Users item)
	{
		/* Auto-generated method
		  Insert a new record in Sponsor_Users */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Sponsor_Users */
	void function deleteSponsor_Users( SPONSOR_USERS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { SPONSOR_USERS_ID = SPONSOR_USERS_ID };
		var item = entityLoad("Sponsor_Users",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Sponsor_Users */
	Sponsor_Users[] function getAllSponsor_Users()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Sponsor_Users");
	}

	/* Get All Paged Sponsor_Users */
	Sponsor_Users[] function getSponsor_Users_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Sponsor_Users",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Sponsor_Users */
	Sponsor_Users function getSponsor_Users( SPONSOR_USERS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { SPONSOR_USERS_ID = SPONSOR_USERS_ID };
		return entityLoad("Sponsor_Users",primaryKeysMap,true);
	}

	/* Save Sponsor_Users */
	Sponsor_Users function updateSponsor_Users(Sponsor_Users item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Sponsor_Users */
		entitySave(item);
		return item;
	}

	/* Count Sponsor_Users */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Sponsor_Users",true);
	}

} 

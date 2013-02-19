component output="false" hint="CFBuilder-Generated:Lookups"
{
	
	/*
	LOOKUPS SERVICES
	*/
	
	/* Add Lookups */
	Lookups function createLookups(Lookups item)
	{
		/* Auto-generated method
		  Insert a new record in Lookups */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Lookups */
	void function deleteLookups( LOOKUPS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { LOOKUPS_ID = LOOKUPS_ID };
		var item = entityLoad("Lookups",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Lookups */
	Lookups[] function getAllLookups()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Lookups");
	}

	/* Get All Paged Lookups */
	Lookups[] function getLookups_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Lookups",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Lookups */
	Lookups function getLookups( LOOKUPS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { LOOKUPS_ID = LOOKUPS_ID };
		return entityLoad("Lookups",primaryKeysMap,true);
	}

	/* Save Lookups */
	Lookups function updateLookups(Lookups item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Lookups */
		entitySave(item);
		return item;
	}

	/* Count Lookups */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Lookups",true);
	}

} 

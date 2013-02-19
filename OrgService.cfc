component output="false" hint="CFBuilder-Generated:Org"
{
	
	/*
	ORG SERVICES
	*/
	
	/* Add Org */
	Org function createOrg(Org item)
	{
		/* Auto-generated method
		  Insert a new record in Org */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Org */
	void function deleteOrg( ORG_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { ORG_ID = ORG_ID };
		var item = entityLoad("Org",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Org */
	Org[] function getAllOrg()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Org");
	}

	/* Get All Paged Org */
	Org[] function getOrg_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Org",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Org */
	Org function getOrg( ORG_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { ORG_ID = ORG_ID };
		return entityLoad("Org",primaryKeysMap,true);
	}

	/* Save Org */
	Org function updateOrg(Org item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Org */
		entitySave(item);
		return item;
	}

	/* Count Org */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Org",true);
	}

} 

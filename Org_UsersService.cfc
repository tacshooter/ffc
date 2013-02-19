component output="false" hint="CFBuilder-Generated:Org_Users"
{
	
	/*
	ORG_USERS SERVICES
	*/
	
	/* Add Org_Users */
	Org_Users function createOrg_Users(Org_Users item)
	{
		/* Auto-generated method
		  Insert a new record in Org_Users */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Org_Users */
	void function deleteOrg_Users( ORG_USERS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { ORG_USERS_ID = ORG_USERS_ID };
		var item = entityLoad("Org_Users",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Org_Users */
	Org_Users[] function getAllOrg_Users()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Org_Users");
	}

	/* Get All Paged Org_Users */
	Org_Users[] function getOrg_Users_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Org_Users",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Org_Users */
	Org_Users function getOrg_Users( ORG_USERS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { ORG_USERS_ID = ORG_USERS_ID };
		return entityLoad("Org_Users",primaryKeysMap,true);
	}

	/* Save Org_Users */
	Org_Users function updateOrg_Users(Org_Users item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Org_Users */
		entitySave(item);
		return item;
	}

	/* Count Org_Users */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Org_Users",true);
	}

} 

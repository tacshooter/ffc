component output="false" hint="CFBuilder-Generated:Org_File"
{
	
	/*
	ORG_FILE SERVICES
	*/
	
	/* Add Org_File */
	Org_File function createOrg_File(Org_File item)
	{
		/* Auto-generated method
		  Insert a new record in Org_File */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Org_File */
	void function deleteOrg_File( ORG_FILE_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { ORG_FILE_ID = ORG_FILE_ID };
		var item = entityLoad("Org_File",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Org_File */
	Org_File[] function getAllOrg_File()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Org_File");
	}

	/* Get All Paged Org_File */
	Org_File[] function getOrg_File_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Org_File",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Org_File */
	Org_File function getOrg_File( ORG_FILE_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { ORG_FILE_ID = ORG_FILE_ID };
		return entityLoad("Org_File",primaryKeysMap,true);
	}

	/* Save Org_File */
	Org_File function updateOrg_File(Org_File item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Org_File */
		entitySave(item);
		return item;
	}

	/* Count Org_File */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Org_File",true);
	}

} 

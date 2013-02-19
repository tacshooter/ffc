component output="false" hint="CFBuilder-Generated:Sponsor"
{
	
	/*
	SPONSOR SERVICES
	*/
	
	/* Add Sponsor */
	Sponsor function createSponsor(Sponsor item)
	{
		/* Auto-generated method
		  Insert a new record in Sponsor */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Sponsor */
	void function deleteSponsor( SPONSOR_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { SPONSOR_ID = SPONSOR_ID };
		var item = entityLoad("Sponsor",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Sponsor */
	Sponsor[] function getAllSponsor()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Sponsor");
	}

	/* Get All Paged Sponsor */
	Sponsor[] function getSponsor_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Sponsor",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Sponsor */
	Sponsor function getSponsor( SPONSOR_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { SPONSOR_ID = SPONSOR_ID };
		return entityLoad("Sponsor",primaryKeysMap,true);
	}

	/* Save Sponsor */
	Sponsor function updateSponsor(Sponsor item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Sponsor */
		entitySave(item);
		return item;
	}

	/* Count Sponsor */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Sponsor",true);
	}

} 

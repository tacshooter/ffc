component output="false" hint="CFBuilder-Generated:Event_Sponsor"
{
	
	/*
	EVENT_SPONSOR SERVICES
	*/
	
	/* Add Event_Sponsor */
	Event_Sponsor function createEvent_Sponsor(Event_Sponsor item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Sponsor */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Sponsor */
	void function deleteEvent_Sponsor( EVENT_SPONSOR_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_SPONSOR_ID = EVENT_SPONSOR_ID };
		var item = entityLoad("Event_Sponsor",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Sponsor */
	Event_Sponsor[] function getAllEvent_Sponsor()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Sponsor");
	}

	/* Get All Paged Event_Sponsor */
	Event_Sponsor[] function getEvent_Sponsor_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Sponsor",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Sponsor */
	Event_Sponsor function getEvent_Sponsor( EVENT_SPONSOR_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_SPONSOR_ID = EVENT_SPONSOR_ID };
		return entityLoad("Event_Sponsor",primaryKeysMap,true);
	}

	/* Save Event_Sponsor */
	Event_Sponsor function updateEvent_Sponsor(Event_Sponsor item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Sponsor */
		entitySave(item);
		return item;
	}

	/* Count Event_Sponsor */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Sponsor",true);
	}

} 

component output="false" hint="CFBuilder-Generated:Event"
{
	
	/*
	EVENT SERVICES
	*/
	
	/* Add Event */
	Event function createEvent(Event item)
	{
		/* Auto-generated method
		  Insert a new record in Event */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event */
	void function deleteEvent( EVENT_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_ID = EVENT_ID };
		var item = entityLoad("Event",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event */
	Event[] function getAllEvent()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event");
	}

	/* Get All Paged Event */
	Event[] function getEvent_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event */
	Event function getEvent( EVENT_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_ID = EVENT_ID };
		return entityLoad("Event",primaryKeysMap,true);
	}

	/* Save Event */
	Event function updateEvent(Event item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event */
		entitySave(item);
		return item;
	}

	/* Count Event */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event",true);
	}

} 

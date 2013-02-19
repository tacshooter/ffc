component output="false" hint="CFBuilder-Generated:Event_Increment"
{
	
	/*
	EVENT_INCREMENT SERVICES
	*/
	
	/* Add Event_Increment */
	Event_Increment function createEvent_Increment(Event_Increment item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Increment */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Increment */
	void function deleteEvent_Increment( EVENT_INCREMENT_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_INCREMENT_ID = EVENT_INCREMENT_ID };
		var item = entityLoad("Event_Increment",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Increment */
	Event_Increment[] function getAllEvent_Increment()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Increment");
	}

	/* Get All Paged Event_Increment */
	Event_Increment[] function getEvent_Increment_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Increment",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Increment */
	Event_Increment function getEvent_Increment( EVENT_INCREMENT_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_INCREMENT_ID = EVENT_INCREMENT_ID };
		return entityLoad("Event_Increment",primaryKeysMap,true);
	}

	/* Save Event_Increment */
	Event_Increment function updateEvent_Increment(Event_Increment item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Increment */
		entitySave(item);
		return item;
	}

	/* Count Event_Increment */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Increment",true);
	}

} 

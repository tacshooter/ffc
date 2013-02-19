component output="false" hint="CFBuilder-Generated:Event_Email"
{
	
	/*
	EVENT_EMAIL SERVICES
	*/
	
	/* Add Event_Email */
	Event_Email function createEvent_Email(Event_Email item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Email */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Email */
	void function deleteEvent_Email( EVENT_EMAIL_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_EMAIL_ID = EVENT_EMAIL_ID };
		var item = entityLoad("Event_Email",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Email */
	Event_Email[] function getAllEvent_Email()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Email");
	}

	/* Get All Paged Event_Email */
	Event_Email[] function getEvent_Email_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Email",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Email */
	Event_Email function getEvent_Email( EVENT_EMAIL_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_EMAIL_ID = EVENT_EMAIL_ID };
		return entityLoad("Event_Email",primaryKeysMap,true);
	}

	/* Save Event_Email */
	Event_Email function updateEvent_Email(Event_Email item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Email */
		entitySave(item);
		return item;
	}

	/* Count Event_Email */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Email",true);
	}

} 

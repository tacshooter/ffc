component output="false" hint="CFBuilder-Generated:Event_Email_Address"
{
	
	/*
	EVENT_EMAIL_ADDRESS SERVICES
	*/
	
	/* Add Event_Email_Address */
	Event_Email_Address function createEvent_Email_Address(Event_Email_Address item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Email_Address */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Email_Address */
	void function deleteEvent_Email_Address( EVENT_EMAIL_ADDRESS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_EMAIL_ADDRESS_ID = EVENT_EMAIL_ADDRESS_ID };
		var item = entityLoad("Event_Email_Address",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Email_Address */
	Event_Email_Address[] function getAllEvent_Email_Address()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Email_Address");
	}

	/* Get All Paged Event_Email_Address */
	Event_Email_Address[] function getEvent_Email_Address_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Email_Address",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Email_Address */
	Event_Email_Address function getEvent_Email_Address( EVENT_EMAIL_ADDRESS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_EMAIL_ADDRESS_ID = EVENT_EMAIL_ADDRESS_ID };
		return entityLoad("Event_Email_Address",primaryKeysMap,true);
	}

	/* Save Event_Email_Address */
	Event_Email_Address function updateEvent_Email_Address(Event_Email_Address item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Email_Address */
		entitySave(item);
		return item;
	}

	/* Count Event_Email_Address */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Email_Address",true);
	}

} 

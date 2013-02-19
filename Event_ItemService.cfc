component output="false" hint="CFBuilder-Generated:Event_Item"
{
	
	/*
	EVENT_ITEM SERVICES
	*/
	
	/* Add Event_Item */
	Event_Item function createEvent_Item(Event_Item item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Item */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Item */
	void function deleteEvent_Item( EVENT_ITEM_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { EVENT_ITEM_ID = EVENT_ITEM_ID };
		var item = entityLoad("Event_Item",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Item */
	Event_Item[] function getAllEvent_Item()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Item");
	}

	/* Get All Paged Event_Item */
	Event_Item[] function getEvent_Item_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Item",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Item */
	Event_Item function getEvent_Item( EVENT_ITEM_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { EVENT_ITEM_ID = EVENT_ITEM_ID };
		return entityLoad("Event_Item",primaryKeysMap,true);
	}

	/* Save Event_Item */
	Event_Item function updateEvent_Item(Event_Item item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Item */
		entitySave(item);
		return item;
	}

	/* Count Event_Item */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Item",true);
	}

} 

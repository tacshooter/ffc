component output="false" hint="CFBuilder-Generated:Event_Item_Product"
{
	
	/*
	EVENT_ITEM_PRODUCT SERVICES
	*/
	
	/* Add Event_Item_Product */
	Event_Item_Product function createEvent_Item_Product(Event_Item_Product item)
	{
		/* Auto-generated method
		  Insert a new record in Event_Item_Product */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Event_Item_Product */
	void function deleteEvent_Item_Product( Event_Item_Product_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { Event_Item_Product_ID = Event_Item_Product_ID };
		var item = entityLoad("Event_Item_Product",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Event_Item_Product */
	Event_Item_Product[] function getAllEvent_Item_Product()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Event_Item_Product");
	}

	/* Get All Paged Event_Item_Product */
	Event_Item_Product[] function getEvent_Item_Product_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Event_Item_Product",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Event_Item_Product */
	Event_Item_Product function getEvent_Item_Product( Event_Item_Product_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { Event_Item_Product_ID = Event_Item_Product_ID };
		return entityLoad("Event_Item_Product",primaryKeysMap,true);
	}

	/* Save Event_Item_Product */
	Event_Item_Product function updateEvent_Item_Product(Event_Item_Product item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Event_Item_Product */
		entitySave(item);
		return item;
	}

	/* Count Event_Item_Product */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Event_Item_Product",true);
	}

} 

component output="false" hint="CFBuilder-Generated:Product_Limit"
{
	
	/*
	PRODUCT_LIMIT SERVICES
	*/
	
	/* Add Product_Limit */
	Product_Limit function createProduct_Limit(Product_Limit item)
	{
		/* Auto-generated method
		  Insert a new record in Product_Limit */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Product_Limit */
	void function deleteProduct_Limit( PRODUCT_LIMIT_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { PRODUCT_LIMIT_ID = PRODUCT_LIMIT_ID };
		var item = entityLoad("Product_Limit",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Product_Limit */
	Product_Limit[] function getAllProduct_Limit()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Product_Limit");
	}

	/* Get All Paged Product_Limit */
	Product_Limit[] function getProduct_Limit_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Product_Limit",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Product_Limit */
	Product_Limit function getProduct_Limit( PRODUCT_LIMIT_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { PRODUCT_LIMIT_ID = PRODUCT_LIMIT_ID };
		return entityLoad("Product_Limit",primaryKeysMap,true);
	}

	/* Save Product_Limit */
	Product_Limit function updateProduct_Limit(Product_Limit item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Product_Limit */
		entitySave(item);
		return item;
	}

	/* Count Product_Limit */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Product_Limit",true);
	}

} 

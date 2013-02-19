component output="false" hint="CFBuilder-Generated:Product"
{
	
	/*
	PRODUCT SERVICES
	*/
	
	/* Add Product */
	Product function createProduct(Product item)
	{
		/* Auto-generated method
		  Insert a new record in Product */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Product */
	void function deleteProduct( PRODUCT_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { PRODUCT_ID = PRODUCT_ID };
		var item = entityLoad("Product",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Product */
	Product[] function getAllProduct()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Product");
	}

	/* Get All Paged Product */
	Product[] function getProduct_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Product",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Product */
	Product function getProduct( PRODUCT_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { PRODUCT_ID = PRODUCT_ID };
		return entityLoad("Product",primaryKeysMap,true);
	}

	/* Save Product */
	Product function updateProduct(Product item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Product */
		entitySave(item);
		return item;
	}

	/* Count Product */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Product",true);
	}

} 

component output="false" hint="CFBuilder-Generated:Product_Terms"
{
	
	/*
	PRODUCT_TERMS SERVICES
	*/
	
	/* Add Product_Terms */
	Product_Terms function createProduct_Terms(Product_Terms item)
	{
		/* Auto-generated method
		  Insert a new record in Product_Terms */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Product_Terms */
	void function deleteProduct_Terms( PRODUCT_TERMS_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { PRODUCT_TERMS_ID = PRODUCT_TERMS_ID };
		var item = entityLoad("Product_Terms",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Product_Terms */
	Product_Terms[] function getAllProduct_Terms()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Product_Terms");
	}

	/* Get All Paged Product_Terms */
	Product_Terms[] function getProduct_Terms_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Product_Terms",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Product_Terms */
	Product_Terms function getProduct_Terms( PRODUCT_TERMS_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { PRODUCT_TERMS_ID = PRODUCT_TERMS_ID };
		return entityLoad("Product_Terms",primaryKeysMap,true);
	}

	/* Save Product_Terms */
	Product_Terms function updateProduct_Terms(Product_Terms item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Product_Terms */
		entitySave(item);
		return item;
	}

	/* Count Product_Terms */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Product_Terms",true);
	}

} 

component output="false" hint="CFBuilder-Generated:Product_Terms_Lookup"
{
	
	/*
	PRODUCT_TERMS_LOOKUP SERVICES
	*/
	
	/* Add Product_Terms_Lookup */
	Product_Terms_Lookup function createProduct_Terms_Lookup(Product_Terms_Lookup item)
	{
		/* Auto-generated method
		  Insert a new record in Product_Terms_Lookup */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Product_Terms_Lookup */
	void function deleteProduct_Terms_Lookup( PRODUCT_TERMS_LOOKUP_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { PRODUCT_TERMS_LOOKUP_ID = PRODUCT_TERMS_LOOKUP_ID };
		var item = entityLoad("Product_Terms_Lookup",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Product_Terms_Lookup */
	Product_Terms_Lookup[] function getAllProduct_Terms_Lookup()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Product_Terms_Lookup");
	}

	/* Get All Paged Product_Terms_Lookup */
	Product_Terms_Lookup[] function getProduct_Terms_Lookup_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Product_Terms_Lookup",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Product_Terms_Lookup */
	Product_Terms_Lookup function getProduct_Terms_Lookup( PRODUCT_TERMS_LOOKUP_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { PRODUCT_TERMS_LOOKUP_ID = PRODUCT_TERMS_LOOKUP_ID };
		return entityLoad("Product_Terms_Lookup",primaryKeysMap,true);
	}

	/* Save Product_Terms_Lookup */
	Product_Terms_Lookup function updateProduct_Terms_Lookup(Product_Terms_Lookup item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Product_Terms_Lookup */
		entitySave(item);
		return item;
	}

	/* Count Product_Terms_Lookup */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Product_Terms_Lookup",true);
	}

} 

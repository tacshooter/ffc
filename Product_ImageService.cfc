component output="false" hint="CFBuilder-Generated:Product_Image"
{
	
	/*
	PRODUCT_IMAGE SERVICES
	*/
	
	/* Add Product_Image */
	Product_Image function createProduct_Image(Product_Image item)
	{
		/* Auto-generated method
		  Insert a new record in Product_Image */
		entitySave(item);

		/* return created item */
		return item;
	}

	/* Remove Product_Image */
	void function deleteProduct_Image( PRODUCT_IMAGE_ID	)
	{
		/* Auto-generated method
	       Delete a record in the database */
		var primaryKeysMap = { PRODUCT_IMAGE_ID = PRODUCT_IMAGE_ID };
		var item = entityLoad("Product_Image",primaryKeysMap,true);
		if(isNull(item) eq false)
			entityDelete(item);
		
		return;
	}

	/* Get All Product_Image */
	Product_Image[] function getAllProduct_Image()
	{
		/* Auto-generated method
		        Retrieve set of records and return them as a query or array */
		/* return items */
		return entityLoad("Product_Image");
	}

	/* Get All Paged Product_Image */
	Product_Image[] function getProduct_Image_paged(numeric startIndex,numeric numItems)
	{
		/* Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow */
		/* return paged items */
		return entityLoad("Product_Image",{},"",{offset=startIndex,maxresults=numItems});
	}

	/* Get Product_Image */
	Product_Image function getProduct_Image( PRODUCT_IMAGE_ID )
	{
		/* Auto-generated method
		         Retrieve a single record and return it */
		/* return item */
		var primaryKeysMap = { PRODUCT_IMAGE_ID = PRODUCT_IMAGE_ID };
		return entityLoad("Product_Image",primaryKeysMap,true);
	}

	/* Save Product_Image */
	Product_Image function updateProduct_Image(Product_Image item)
	{
		/* Auto-generated method
		         Update an existing record in the database */
		/* update Product_Image */
		entitySave(item);
		return item;
	}

	/* Count Product_Image */
	numeric function count()
	{
	/* Auto-generated method
		         Return the number of items in your table */
		return ormExecuteQuery("select count(*) from Product_Image",true);
	}

} 

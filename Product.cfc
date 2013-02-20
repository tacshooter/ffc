component persistent="true" table="Product"  schema="dbo" output="false"
{
	/* properties */
	
	property name="PRODUCT_ID" column="PRODUCT_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Item_Name" column="Item_Name" type="string" ormtype="string"; 
	property name="Retail_Amt" column="Retail_Amt" type="numeric" ormtype="double"; 
	property name="Cost_Amt" column="Cost_Amt" type="numeric" ormtype="double"; 
	property name="Shipping_Amt" column="Shipping_Amt" type="numeric" ormtype="double"; 
	property name="Description" column="Description" type="string" ormtype="string"; 
	property name="Limit_Per_Event" column="Limit_Per_Event" type="numeric" ormtype="int"; 
	property name="Product_Type" column="Product_Type" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Sponsor" fieldtype="many-to-one" cfc="Sponsor" fkcolumn="Sponsor_ID";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="SecuredBy_Users_ID";
	
	property name="Product_Limit"type="array" fieldtype="one-to-many" cfc="Product_Limit" fkcolumn="Product_ID";
	
	property name="Event_Item_Product"type="array" fieldtype="one-to-many" cfc="Event_Item_Product" fkcolumn="Product_ID";
	
	property name="Product_Terms"type="array" fieldtype="one-to-many" cfc="Product_Terms" fkcolumn="Product_ID";
	
	property name="Product_Image"type="array" fieldtype="one-to-many" cfc="Product_Image" fkcolumn="Product_ID";
		
} 

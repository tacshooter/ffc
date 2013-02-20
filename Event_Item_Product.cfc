component persistent="true" table="Event_Item_Product"  schema="dbo" output="false"
{
	/* properties */
	
	property name="Event_Item_Product_ID" column="Event_Item_Product_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event_Item" fieldtype="many-to-one" cfc="Event_Item" fkcolumn="Event_Item_ID";
	
	property name="Product" fieldtype="many-to-one" cfc="Product" fkcolumn="Product_ID";
		
} 

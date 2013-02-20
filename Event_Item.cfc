component persistent="true" table="Event_Item"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_ITEM_ID" column="EVENT_ITEM_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Item_Type" column="Item_Type" type="string" ormtype="string"; 
	property name="Item_Status" column="Item_Status" type="string" ormtype="string"; 
	property name="Item_Name" column="Item_Name" type="string" ormtype="string"; 
	property name="Current_Price_Amt" column="Current_Price_Amt" type="numeric" ormtype="double"; 
	property name="Begin_Price_Amt" column="Begin_Price_Amt" type="numeric" ormtype="double"; 
	property name="UpTo_Price_Amt" column="UpTo_Price_Amt" type="numeric" ormtype="double"; 
	property name="Start_Date" column="Start_Date" type="date" ormtype="timestamp"; 
	property name="End_Date" column="End_Date" type="date" ormtype="timestamp"; 
	property name="Sort_Order" column="Sort_Order" type="numeric" ormtype="int"; 
	property name="Proceeds_Pct" column="Proceeds_Pct" type="numeric" ormtype="double"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="User_Activity"type="array" fieldtype="one-to-many" cfc="User_Activity" fkcolumn="Event_Item_ID";
	
	property name="Event" fieldtype="many-to-one" cfc="Event" fkcolumn="Event_ID";
	
	property name="Event_Item_Product"type="array" fieldtype="one-to-many" cfc="Event_Item_Product" fkcolumn="Event_Item_ID";
		
} 

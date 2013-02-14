/**
*@output false
*@table Event_Item
*@persistent true
*/
component{
	//identifier
	property name="Event_Item_Id" fieldtype="id" generator="identity";

	//properties
	property name="Current_Price_Amount";
	property name="Begin_Price_Amount";
	property name="Upto_Price_Amount";
	property name="Start_Date";
	property name="End_Date";
	property name="Sort_Order";
	property name="Proceeds_Pct";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Item_Products" type="array" fkcolumn="Event_Item_Id" fieldtype="one-to-many" cfc="Event_Item_Products";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
	property name="User_Activity" type="array" fkcolumn="Event_Item_Id" fieldtype="one-to-many" cfc="User_Activity";
	property name="Item_Type" fkcolumn="Item_Type_Id" fieldtype="many-to-one" cfc="Item_Types";
}


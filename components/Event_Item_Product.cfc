/**
*@output false
*@table Event_Item_Product
*@persistent true
*/
component{
	//identifier
	property name="Event_Item_Product_Id" fieldtype="id" generator="identity";

	//properties
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Item_Id" fkcolumn="Event_Item_Id" fieldtype="many-to-one" cfc="Event_Item";
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
}

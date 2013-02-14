/**
*@output false
*@table Product_Limit
*@persistent true
*/
component{
	//identifier
	property name="Product_Limit_Id" fieldtype="id" generator="identity";

	//properties
	property name="Limit_Value";
	property name="Limit_Svalue";
	property name="Limit_Id";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
	property name="Product_Limit_Type_Id" fkcolumn="Product_Limit_Type_Id" fieldtype="many-to-one" cfc="Product_Limit_Type";
}

/**
*@output false
*@table Product_Image
*@persistent true
*/
component{
	//identifier
	property name="Product_Image_Id" fieldtype="id" generator="identity";

	//properties
	property name="Default_YN";
	property name="Image_Name";
	property name="Image_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
}


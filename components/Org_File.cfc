/**
*@output false
*@table Org_File
*@persistent true
*/
component{
	//identifier
	property name="Org_File_Id" fieldtype="id" generator="identity";

	//properties
	property name="File_Description";
	property name="File_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
	property name="File_Type" fkcolumn="File_Type_Id" fieldtype="many-to-one";
}

/**
*@output false
*@table Org_Users
*@persistent true
*/
component{
	//identifier
	property name="Org_Users_Id" fieldtype="id" generator="identity";

	//properties
	property name="Primary_YN";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
	property name="Users_Id" fkcolumn="Users_Id" fieldtype="many-to-one";
}

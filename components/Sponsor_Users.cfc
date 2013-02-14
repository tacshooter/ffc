/**
*@output false
*@table Sponsor_Users
*@persistent true
*/
component{
	//identifier
	property name="Sponsor_Users_Id" fieldtype="id" generator="identity";

	//properties
	property name="Primary_YN";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Sponsor_Id" fkcolumn="Sponsor_Id" fieldtype="many-to-one" cfc="Sponsor";
	property name="Users_Id" fkcolumn="Users_Id" fieldtype="many-to-one" cfc="Users";
}


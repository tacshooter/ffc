/**
*@output false
*@table Event_Sponsor
*@persistent true
*/
component{
	//identifier
	property name="Event_Sponsor_Id" fieldtype="id" generator="identity";

	//properties
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
	property name="Sponsor_Id" fkcolumn="Sponsor_Id" fieldtype="many-to-one" cfc="Sponsor";
}


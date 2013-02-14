/**
*@output false
*@table Event_Email_Address
*@persistent true
*/
component{
	//identifier
	property name="Event_Email_Address_Id" fieldtype="id" generator="identity";

	//properties
	property name="Email";
	property name="First_Name";
	property name="Last_Name";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="";
}

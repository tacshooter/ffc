/**
*@output false
*@table Event_Email
*@persistent true
*/
component{
	//identifier
	property name="Event_Email_Id" fieldtype="id" generator="identity";

	//properties
	property name="Schedule_Date";
	property name="Sent_Date";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Email_Type" fkcolumn="Email_Type_Id" fieldtype="many-to-one" cfc="Email_Types";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
}

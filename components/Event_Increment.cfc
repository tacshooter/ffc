/**
*@output false
*@table Event_Increment
*@persistent true
*/
component{
	//identifier
	property name="Event_Increment_Id" fieldtype="id" generator="identity";

	//properties
	property name="Increment_Amount";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Increment_Type" fkcolumn="Increment_Type_Id" fieldtype="many-to-one" cfc="Increment_Type";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
}

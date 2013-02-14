/**
*@output false
*@table Event
*@persistent true
*/
component{
	//identifier
	property name="Event_Id" fieldtype="id" generator="identity";

	//properties
	property name="Event_Name";
	property name="Start_Date";
	property name="End_Date";
	property name="Goal_Amount";
	property name="Image_Filename";
	property name="Description";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Increments" type="array" fkcolumn="Event_Id" fieldtype="one-to-many" cfc="Org_Increment";
	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
}

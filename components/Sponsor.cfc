/**
*@output false
*@table Sponsor
*@persistent true
*/
component{
	//identifier
	property name="Sponsor_Id" fieldtype="id" generator="identity";

	//properties
	property name="Sponsor_Name";
	property name="First_Name";
	property name="Last_Name";
	property name="Address_1";
	property name="Address_2";
	property name="City";
	property name="State";
	property name="Zip";
	property name="Phone_Main";
	property name="Phone_cell";
	property name="Email";
	property name="Website_Url";
	property name="Logo_Filename";
	property name="Description";
	property name="Notes";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Sponsor_Events" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Event_Sponsor";
	property name="Sponsor_Users" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Sponsor_Users";
	property name="Sponsor_Products" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Product";
}


/**
*@output false
*@table Org
*@persistent true
*/
component {
	//identifier
	property name="Org_Id" fieldtype="id" generator="identity";
	
	//Properties
	property name="Org_Status_Id";
	property name="Org_Name";
	property name="Address_1";
	property name="Address_2";
	property name="City";
	property name="State";
	property name="Zip";
	property name="Notes";
	property name="Tax_Id";
	property name="Logo_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";
	
	//FK's
	property name="Status" fkcolumn="Org_Status_Id" fieldtype="many-to-one" cfc="Org_Status";
	property name="Org_Users" type="array" fkcolumn="Org_Id" fieldtype="one-to-many" cfc="Org_Users";
	property name="Org_Files" type="array" fkcolumn="Org_Id" fieldtype="one-to-many" cfc="Org_File";
}

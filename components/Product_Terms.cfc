/**
* @output false
* @table Product_Terms
* @persistent true
*/
component{

	//identifier
	property name="Product_Terms_Id" fieldtype="id" generator="identity" ormtype="integer";

	//properties
	property name="Term_Type" ormtype="integer";
	property name="Description" ormtype="string";
	property name="Create_Date" ormtype="timestamp";
	property name="Create_User" ormtype="integer";
	property name="Modify_Date" ormtype="timestamp";
	property name="Modify_User" ormtype="integer";

	//Relationships
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
	property name="Product_Terms" type="array" fkcolumn="Product_Terms_Id" fieldtype="many-to-one" cfc="Product_Terms_Lookup";
}

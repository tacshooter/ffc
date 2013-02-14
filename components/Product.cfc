/**
* @output false
* @table Product
* @persistent true
*/
component{

	//identifier
	property name="Product_Id" fieldtype="id" generator="identity" ormtype="integer";

	//properties
	property name="Item_Name" ormtype="string";
	property name="Retail_Amount" ormtype="big_decimal";
	property name="Cost_Amount" ormtype="big_decimal";
	property name="Shipping_Amount" ormtype="big_decimal";
	property name="Description" ormtype="string";
	property name="Limit_Per_Event" ormtype="integer";
	//property name="" ormtype="";
	//property name="" ormtype="";
	//property name="" ormtype="";
	//property name="" ormtype="";
	//property name="" ormtype="";
	//property name="" ormtype="";
	property name="Create_Date" ormtype="timestamp";
	property name="Create_User" ormtype="integer";
	property name="Modify_Date" ormtype="timestamp";
	property name="Modify_User" ormtype="integer";

	//Relationships
	property name="Sponsor_Id" fkcolumn="Sponsor_Id" fieldtype="many-to-one" cfc="Sponsor";
	property name="SecuredBy_Users_Id" fkcolumn="SecuredBy_Users_Id" fieldtype="many-to-one" cfc="Users";
	property name="Product_Limits" type="array" fkcolumn="Product_Id" fieldtype="one-to-many" cfc="Product_Limit";
	property name="Product_Images" type="array" fkcolumn="Product_Id" fieldtype="one-to-many" cfc="Product_Image";
	property name="Product_Terms" type="array" fkcolumn="Product_Id" fieldtype="one-to-many" cfc="Product_Terms";
	property name="Event_Item_Products" type="array" fkcolumn="Product_Id" fieldtype="one-to-many" cfc="Event_Item_Product";
}
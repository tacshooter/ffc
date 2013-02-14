/**
*
* @output false
* @table Users
* @persistent true
*/
component{

	//identifier
	property name="Users_Id" fieldtype="id" generator="identity" ormtype="integer";

	//properties
	property name="User_Name" ormtype="string";
	property name="User_Type" ormtype="integer";
	property name="First_Name" ormtype="string";
	property name="Last_Name" ormtype="string";
	property name="Address_1" ormtype="string";
	property name="Address_2" ormtype="string";
	property name="City" ormtype="string";
	property name="State" ormtype="string";
	property name="Zip" ormtype="string";
	property name="Email" ormtype="string";
	property name="Phone_Home" ormtype="string";
	property name="Phone_Work" ormtype="string";
	property name="Phone_Cell" ormtype="string";
	property name="Password_Encrypted" ormtype="binary";
	property name="Points_Earned" ormtype="integer";
	property name="Points_Spent" ormtype="integer";
	property name="Bid_Balance" ormtype="integer";
	property name="Facebook_Id" ormtype="string";
	property name="Facebook_Name" ormtype="string";
	property name="Twitter_Name" ormtype="string";
	property name="Create_Date" ormtype="timestamp";
	property name="Create_User" ormtype="integer";
	property name="Modify_Date" ormtype="timestamp";
	property name="Modify_User" ormtype="integer";

	//Relationships
	property name="" fkcolumn="_Id" fieldtype="many-to-one" cfc="Event_Item";
	property name="" fkcolumn="_Id" fieldtype="many-to-one" cfc="Users_Activity";
	property name="" fkcolumn="_Id" fieldtype="many-to-one" cfc="Event";
	property name="" fkcolumn="_Id" fieldtype="many-to-one" cfc="Event_Item";
	property name="" fkcolumn="_Id" fieldtype="many-to-one" cfc="Product";
	property name="" fkcolumn="Users_Id" fieldtype="many-to-one" cfc="Sponsor_Users";
}

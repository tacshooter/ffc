component persistent="true" table="Users"  schema="dbo" output="false"
{
	/* properties */
	
	property name="USERS_ID" column="USERS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="User_Name" column="User_Name" type="string" ormtype="string"; 
	property name="User_Type" column="User_Type" type="string" ormtype="string"; 
	property name="First_Name" column="First_Name" type="string" ormtype="string"; 
	property name="Last_Name" column="Last_Name" type="string" ormtype="string"; 
	property name="Address_1" column="Address_1" type="string" ormtype="string"; 
	property name="Address_2" column="Address_2" type="string" ormtype="string"; 
	property name="City" column="City" type="string" ormtype="string"; 
	property name="State" column="State" type="string" ormtype="string"; 
	property name="Zip" column="Zip" type="string" ormtype="string"; 
	property name="Email" column="Email" type="string" ormtype="string"; 
	property name="Phone_Work" column="Phone_Work" type="string" ormtype="string"; 
	property name="Phone_Home" column="Phone_Home" type="string" ormtype="string"; 
	property name="Phone_Cell" column="Phone_Cell" type="string" ormtype="string"; 
	property name="Password_Encrypted" column="Password_Encrypted" type="binary" ormtype="byte[]"; 
	property name="Points_Earned" column="Points_Earned" type="numeric" ormtype="int"; 
	property name="Points_Spent" column="Points_Spent" type="numeric" ormtype="int"; 
	property name="Bid_Balance" column="Bid_Balance" type="numeric" ormtype="int"; 
	property name="Facebook_Name" column="Facebook_Name" type="string" ormtype="string"; 
	property name="Facebook_ID" column="Facebook_ID" type="numeric" ormtype="long"; 
	property name="Twitter_Name" column="Twitter_Name" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Create_User" column="Create_User" type="numeric" ormtype="int"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="Modify_User" column="Modify_User" type="numeric" ormtype="int"; 
	property name="User_Activity"type="array" fieldtype="one-to-many" cfc="User_Activity" fkcolumn="Create_User";
	
	property name="User_Activity"type="array" fieldtype="one-to-many" cfc="User_Activity" fkcolumn="Modify_User";
	
	property name="Product"type="array" fieldtype="one-to-many" cfc="Product" fkcolumn="Create_User";
	
	property name="Product"type="array" fieldtype="one-to-many" cfc="Product" fkcolumn="Modify_User";
	
	property name="Event_Item"type="array" fieldtype="one-to-many" cfc="Event_Item" fkcolumn="Create_User";
	
	property name="Event_Item"type="array" fieldtype="one-to-many" cfc="Event_Item" fkcolumn="Modify_User";
	
	property name="Product_Terms_Lookup"type="array" fieldtype="one-to-many" cfc="Product_Terms_Lookup" fkcolumn="Create_User";
	
	property name="Product_Terms_Lookup"type="array" fieldtype="one-to-many" cfc="Product_Terms_Lookup" fkcolumn="Modify_User";
	
	property name="Org"type="array" fieldtype="one-to-many" cfc="Org" fkcolumn="Create_User";
	
	property name="Org"type="array" fieldtype="one-to-many" cfc="Org" fkcolumn="Modify_User";
	
	property name="Event_Email"type="array" fieldtype="one-to-many" cfc="Event_Email" fkcolumn="Create_User";
	
	property name="Event_Email"type="array" fieldtype="one-to-many" cfc="Event_Email" fkcolumn="Modify_User";
	
	property name="Event"type="array" fieldtype="one-to-many" cfc="Event" fkcolumn="Create_User";
	
	property name="Event"type="array" fieldtype="one-to-many" cfc="Event" fkcolumn="Modify_User";
	
	property name="Event_Increment"type="array" fieldtype="one-to-many" cfc="Event_Increment" fkcolumn="Create_User";
	
	property name="Event_Increment"type="array" fieldtype="one-to-many" cfc="Event_Increment" fkcolumn="Modify_User";
	
	property name="Product_Limit"type="array" fieldtype="one-to-many" cfc="Product_Limit" fkcolumn="Modify_User";
	
	property name="Product_Limit"type="array" fieldtype="one-to-many" cfc="Product_Limit" fkcolumn="Create_User";
	
	property name="Event_Sponsor"type="array" fieldtype="one-to-many" cfc="Event_Sponsor" fkcolumn="Create_User";
	
	property name="Event_Sponsor"type="array" fieldtype="one-to-many" cfc="Event_Sponsor" fkcolumn="Modify_User";
	
	property name="Sponsor_Users"type="array" fieldtype="one-to-many" cfc="Sponsor_Users" fkcolumn="Create_User";
	
	property name="Sponsor_Users"type="array" fieldtype="one-to-many" cfc="Sponsor_Users" fkcolumn="Modify_User";
	
	property name="Event_Email_Address"type="array" fieldtype="one-to-many" cfc="Event_Email_Address" fkcolumn="Create_User";
	
	property name="Event_Email_Address"type="array" fieldtype="one-to-many" cfc="Event_Email_Address" fkcolumn="Modify_User";
	
	property name="Event_Item_Product"type="array" fieldtype="one-to-many" cfc="Event_Item_Product" fkcolumn="Create_User";
	
	property name="Event_Item_Product"type="array" fieldtype="one-to-many" cfc="Event_Item_Product" fkcolumn="Modify_User";
	
	property name="Sponsor"type="array" fieldtype="one-to-many" cfc="Sponsor" fkcolumn="Create_User";
	
	property name="Sponsor"type="array" fieldtype="one-to-many" cfc="Sponsor" fkcolumn="Modify_User";
	
	property name="Lookups"type="array" fieldtype="one-to-many" cfc="Lookups" fkcolumn="Create_User";
	
	property name="Lookups"type="array" fieldtype="one-to-many" cfc="Lookups" fkcolumn="Modify_User";
	
	property name="Product_Terms"type="array" fieldtype="one-to-many" cfc="Product_Terms" fkcolumn="Create_User";
	
	property name="Product_Terms"type="array" fieldtype="one-to-many" cfc="Product_Terms" fkcolumn="Modify_User";
	
	property name="Org_File"type="array" fieldtype="one-to-many" cfc="Org_File" fkcolumn="Create_User";
	
	property name="Org_File"type="array" fieldtype="one-to-many" cfc="Org_File" fkcolumn="Modify_User";
	
	property name="Org_Users"type="array" fieldtype="one-to-many" cfc="Org_Users" fkcolumn="Create_User";
	
	property name="Org_Users"type="array" fieldtype="one-to-many" cfc="Org_Users" fkcolumn="Modify_User";
	
	property name="Product_Image"type="array" fieldtype="one-to-many" cfc="Product_Image" fkcolumn="Create_User";
	
	property name="Product_Image"type="array" fieldtype="one-to-many" cfc="Product_Image" fkcolumn="Modify_User";
	
	property name="User_Activity"type="array" fieldtype="one-to-many" cfc="User_Activity" fkcolumn="Users_ID";
	
	property name="Product"type="array" fieldtype="one-to-many" cfc="Product" fkcolumn="SecuredBy_Users_ID";
	
	property name="Sponsor_Users"type="array" fieldtype="one-to-many" cfc="Sponsor_Users" fkcolumn="Users_ID";
	
	property name="Org_Users"type="array" fieldtype="one-to-many" cfc="Org_Users" fkcolumn="Users_ID";
		
} 

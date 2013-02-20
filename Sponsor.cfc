component persistent="true" table="Sponsor"  schema="dbo" output="false"
{
	/* properties */
	
	property name="SPONSOR_ID" column="SPONSOR_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Sponsor_Name" column="Sponsor_Name" type="string" ormtype="string"; 
	property name="Sponsor_Tier" column="Sponsor_Tier" type="string" ormtype="string"; 
	property name="Sponsor_Status" column="Sponsor_Status" type="string" ormtype="string"; 
	property name="First_Name" column="First_Name" type="string" ormtype="string"; 
	property name="Last_Name" column="Last_Name" type="string" ormtype="string"; 
	property name="Address_1" column="Address_1" type="string" ormtype="string"; 
	property name="Address_2" column="Address_2" type="string" ormtype="string"; 
	property name="City" column="City" type="string" ormtype="string"; 
	property name="State" column="State" type="string" ormtype="string"; 
	property name="Zip" column="Zip" type="string" ormtype="string"; 
	property name="Phone_Main" column="Phone_Main" type="string" ormtype="string"; 
	property name="Phone_Cell" column="Phone_Cell" type="string" ormtype="string"; 
	property name="Email" column="Email" type="string" ormtype="string"; 
	property name="Website_URL" column="Website_URL" type="string" ormtype="string"; 
	property name="Logo_Filename" column="Logo_Filename" type="string" ormtype="string"; 
	property name="Description" column="Description" type="string" ormtype="string"; 
	property name="Notes" column="Notes" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 

	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Product"type="array" fieldtype="one-to-many" cfc="Product" fkcolumn="Sponsor_ID";
	
	property name="Event_Sponsor"type="array" fieldtype="one-to-many" cfc="Event_Sponsor" fkcolumn="Sponsor_ID";
	
	property name="Sponsor_Users"type="array" fieldtype="one-to-many" cfc="Sponsor_Users" fkcolumn="Sponsor_ID";
		
} 

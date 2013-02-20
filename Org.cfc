component persistent="true" table="Org"  schema="dbo" output="false"
{
	/* properties */
	
	property name="ORG_ID" column="ORG_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Org_Status" column="Org_Status" type="string" ormtype="string"; 
	property name="Org_Name" column="Org_Name" type="string" ormtype="string"; 
	property name="Address_1" column="Address_1" type="string" ormtype="string"; 
	property name="Address_2" column="Address_2" type="string" ormtype="string"; 
	property name="City" column="City" type="string" ormtype="string"; 
	property name="State" column="State" type="string" ormtype="string"; 
	property name="Zip" column="Zip" type="string" ormtype="string"; 
	property name="Notes" column="Notes" type="string" ormtype="string"; 
	property name="Tax_ID" column="Tax_ID" type="string" ormtype="string"; 
	property name="Logo_Filename" column="Logo_Filename" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Org_Users"type="array" fieldtype="one-to-many" cfc="Org_Users" fkcolumn="Org_ID";
	
	property name="Org_File"type="array" fieldtype="one-to-many" cfc="Org_File" fkcolumn="Org_ID";
		
} 

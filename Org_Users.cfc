component persistent="true" table="Org_Users"  schema="dbo" output="false"
{
	/* properties */
	
	property name="ORG_USERS_ID" column="ORG_USERS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Primary_YN" column="Primary_YN" type="numeric" ormtype="boolean"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Org" fieldtype="many-to-one" cfc="Org" fkcolumn="Org_ID";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Users_ID";
		
} 

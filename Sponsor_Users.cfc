component persistent="true" table="Sponsor_Users"  schema="dbo" output="false"
{
	/* properties */
	
	property name="SPONSOR_USERS_ID" column="SPONSOR_USERS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Primary_YN" column="Primary_YN" type="numeric" ormtype="boolean"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Users_ID";
	
	property name="Sponsor" fieldtype="many-to-one" cfc="Sponsor" fkcolumn="Sponsor_ID";
		
} 

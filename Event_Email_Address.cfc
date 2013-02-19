component persistent="true" table="Event_Email_Address"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_EMAIL_ADDRESS_ID" column="EVENT_EMAIL_ADDRESS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Email" column="Email" type="string" ormtype="string"; 
	property name="First_Name" column="First_Name" type="string" ormtype="string"; 
	property name="Last_Name" column="Last_Name" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event" fieldtype="many-to-one" cfc="Event" fkcolumn="Event_ID";
		
} 

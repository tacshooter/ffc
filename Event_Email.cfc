component persistent="true" table="Event_Email"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_EMAIL_ID" column="EVENT_EMAIL_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Email_Type" column="Email_Type" type="string" ormtype="string"; 
	property name="Schedule_Date" column="Schedule_Date" type="date" ormtype="timestamp"; 
	property name="Sent_Date" column="Sent_Date" type="date" ormtype="timestamp"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event" fieldtype="many-to-one" cfc="Event" fkcolumn="Event_ID";
		
} 

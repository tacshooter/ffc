component persistent="true" table="Event_Increment"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_INCREMENT_ID" column="EVENT_INCREMENT_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Increment_Type" column="Increment_Type" type="string" ormtype="string"; 
	property name="Increment_Amt" column="Increment_Amt" type="numeric" ormtype="double"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event" fieldtype="many-to-one" cfc="Event" fkcolumn="Event_ID";
		
} 

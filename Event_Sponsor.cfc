component persistent="true" table="Event_Sponsor"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_SPONSOR_ID" column="EVENT_SPONSOR_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event" fieldtype="many-to-one" cfc="Event" fkcolumn="Event_ID";
	
	property name="Sponsor" fieldtype="many-to-one" cfc="Sponsor" fkcolumn="Sponsor_ID";
		
} 

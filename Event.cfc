component persistent="true" table="Event"  schema="dbo" output="false"
{
	/* properties */
	
	property name="EVENT_ID" column="EVENT_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Event_Name" column="Event_Name" type="string" ormtype="string"; 
	property name="Start_Date" column="Start_Date" type="date" ormtype="timestamp"; 
	property name="End_Date" column="End_Date" type="date" ormtype="timestamp"; 
	property name="Goal_Amt" column="Goal_Amt" type="numeric" ormtype="double"; 
	property name="Image_Filename" column="Image_Filename" type="string" ormtype="string"; 
	property name="Description" column="Description" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event_Item"type="array" fieldtype="one-to-many" cfc="Event_Item" fkcolumn="Event_ID";
	
	property name="Event_Email"type="array" fieldtype="one-to-many" cfc="Event_Email" fkcolumn="Event_ID";
	
	property name="Event_Increment"type="array" fieldtype="one-to-many" cfc="Event_Increment" fkcolumn="Event_ID";
	
	property name="Event_Sponsor"type="array" fieldtype="one-to-many" cfc="Event_Sponsor" fkcolumn="Event_ID";
	
	property name="Event_Email_Address"type="array" fieldtype="one-to-many" cfc="Event_Email_Address" fkcolumn="Event_ID";
		
} 

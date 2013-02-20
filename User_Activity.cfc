component persistent="true" table="User_Activity"  schema="dbo" output="false"
{
	/* properties */
	
	property name="USER_ACTIVITY_ID" column="USER_ACTIVITY_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Activity_Type" column="Activity_Type" type="string" ormtype="string"; 
	property name="Activity_Date" column="Activity_Date" type="date" ormtype="timestamp"; 
	property name="Description" column="Description" type="string" ormtype="string"; 
	property name="Amount" column="Amount" type="numeric" ormtype="double"; 
	property name="Points" column="Points" type="numeric" ormtype="int"; 
	property name="Bids" column="Bids" type="numeric" ormtype="long"; 
	property name="Email" column="Email" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Event_Item" fieldtype="many-to-one" cfc="Event_Item" fkcolumn="Event_Item_ID";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Users_ID";
		
} 

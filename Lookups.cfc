component persistent="true" table="Lookups"  schema="dbo" output="false"
{
	/* properties */
	
	property name="LOOKUPS_ID" column="LOOKUPS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Lkp_Type" column="Lkp_Type" type="string" ormtype="string"; 
	property name="Lkp_Name" column="Lkp_Name" type="string" ormtype="string"; 
	property name="Lkp_Descr" column="Lkp_Descr" type="string" ormtype="string"; 
	property name="Lkp_Value" column="Lkp_Value" type="numeric" ormtype="double"; 
	property name="Lkp_SValue" column="Lkp_SValue" type="string" ormtype="string"; 
	property name="Sort_Order" column="Sort_Order" type="numeric" ormtype="int"; 
	property name="Active" column="Active" type="numeric" ormtype="byte"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
		
} 

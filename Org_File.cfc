component persistent="true" table="Org_File"  schema="dbo" output="false"
{
	/* properties */
	
	property name="ORG_FILE_ID" column="ORG_FILE_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="File_Type" column="File_Type" type="string" ormtype="string"; 
	property name="File_Description" column="File_Description" type="string" ormtype="string"; 
	property name="File_Filename" column="File_Filename" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="Users" fieldtype="many-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Org" fieldtype="many-to-one" cfc="Org" fkcolumn="Org_ID";
		
} 

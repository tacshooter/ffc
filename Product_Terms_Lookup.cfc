component persistent="true" table="Product_Terms_Lookup"  schema="dbo" output="false"
{
	/* properties */
	
	property name="PRODUCT_TERMS_LOOKUP_ID" column="PRODUCT_TERMS_LOOKUP_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Term_Type" column="Term_Type" type="string" ormtype="string"; 
	property name="Description" column="Description" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
		
} 

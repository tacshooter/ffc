component persistent="true" table="Product_Terms"  schema="dbo" output="false"
{
	/* properties */
	
	property name="PRODUCT_TERMS_ID" column="PRODUCT_TERMS_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Term_Type" column="Term_Type" type="string" ormtype="string"; 
	property name="Descripton" column="Descripton" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Product" fieldtype="many-to-one" cfc="Product" fkcolumn="Product_ID";
		
} 

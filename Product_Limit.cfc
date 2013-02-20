component persistent="true" table="Product_Limit"  schema="dbo" output="false"
{
	/* properties */
	
	property name="PRODUCT_LIMIT_ID" column="PRODUCT_LIMIT_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Product_Limit_Type" column="Product_Limit_Type" type="string" ormtype="string"; 
	property name="Limit_Value" column="Limit_Value" type="numeric" ormtype="double"; 
	property name="Limit_SValue" column="Limit_SValue" type="string" ormtype="string"; 
	property name="Limit_ID" column="Limit_ID" type="numeric" ormtype="int"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="Product" fieldtype="many-to-one" cfc="Product" fkcolumn="Product_ID";
		
} 

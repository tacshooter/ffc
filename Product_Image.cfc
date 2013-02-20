component persistent="true" table="Product_Image"  schema="dbo" output="false"
{
	/* properties */
	
	property name="PRODUCT_IMAGE_ID" column="PRODUCT_IMAGE_ID" type="numeric" ormtype="int" fieldtype="id"; 
	property name="Default_YN" column="Default_YN" type="numeric" ormtype="boolean"; 
	property name="Image_Name" column="Image_Name" type="string" ormtype="string"; 
	property name="Image_Filename" column="Image_Filename" type="string" ormtype="string"; 
	property name="Create_Date" column="Create_Date" type="date" ormtype="timestamp"; 
	property name="Modify_Date" column="Modify_Date" type="date" ormtype="timestamp"; 
	property name="CreateUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Create_User";
	
	property name="ModifyUser" fieldtype="one-to-one" cfc="Users" fkcolumn="Modify_User";
	
	property name="Product" fieldtype="many-to-one" cfc="Product" fkcolumn="Product_ID";
		
} 

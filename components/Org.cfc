/**
*@output false
*@table Org
*@persistent true
*/
component {
	//identifier
	property name="Org_Id" fieldtype="id" generator="identity";
	
	//Properties
	property name="Org_Status_Id";
	property name="Org_Name";
	property name="Address_1";
	property name="Address_2";
	property name="City";
	property name="State";
	property name="Zip";
	property name="Notes";
	property name="Tax_Id";
	property name="Logo_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";
	
	//FK's
	property name="Status" fkcolumn="Org_Status_Id" fieldtype="many-to-one" cfc="Org_Status";
	property name="Org_Users" type="array" fkcolumn="Org_Id" fieldtype="one-to-many" cfc="Org_Users";
	property name="Org_Files" type="array" fkcolumn="Org_Id" fieldtype="one-to-many" cfc="Org_File";
}


/**
*@output false
*@table Org_File
*@persistent true
*/
component{
	//identifier
	property name="Org_File_Id" fieldtype="id" generator="identity";

	//properties
	property name="File_Description";
	property name="File_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
	property name="File_Type" fkcolumn="File_Type_Id" fieldtype="many-to-one";
}


/**
*@output false
*@table Org_Users
*@persistent true
*/
component{
	//identifier
	property name="Org_Users_Id" fieldtype="id" generator="identity";

	//properties
	property name="Primary_YN";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
	property name="Users_Id" fkcolumn="Users_Id" fieldtype="many-to-one";
}


/**
*@output false
*@table Event
*@persistent true
*/
component{
	//identifier
	property name="Event_Id" fieldtype="id" generator="identity";

	//properties
	property name="Event_Name";
	property name="Start_Date";
	property name="End_Date";
	property name="Goal_Amount";
	property name="Image_Filename";
	property name="Description";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Increments" type="array" fkcolumn="Event_Id" fieldtype="one-to-many" cfc="Org_Increment";
	property name="Org_Id" fkcolumn="Org_Id" fieldtype="many-to-one" cfc="Org";
}

/**
*@output false
*@table Event_Increment
*@persistent true
*/
component{
	//identifier
	property name="Event_Increment_Id" fieldtype="id" generator="identity";

	//properties
	property name="Increment_Amount";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Increment_Type" fkcolumn="Increment_Type_Id" fieldtype="many-to-one" cfc="Increment_Type";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
}


/**
*@output false
*@table Event_Email
*@persistent true
*/
component{
	//identifier
	property name="Event_Email_Id" fieldtype="id" generator="identity";

	//properties
	property name="Schedule_Date";
	property name="Sent_Date";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Email_Type" fkcolumn="Email_Type_Id" fieldtype="many-to-one" cfc="Email_Types";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
}


/**
*@output false
*@table Event_Email_Address
*@persistent true
*/
component{
	//identifier
	property name="Event_Email_Address_Id" fieldtype="id" generator="identity";

	//properties
	property name="Email";
	property name="First_Name";
	property name="Last_Name";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="";
}


/**
*@output false
*@table Event_Item
*@persistent true
*/
component{
	//identifier
	property name="Event_Item_Id" fieldtype="id" generator="identity";

	//properties
	property name="Current_Price_Amount";
	property name="Begin_Price_Amount";
	property name="Upto_Price_Amount";
	property name="Start_Date";
	property name="End_Date";
	property name="Sort_Order";
	property name="Proceeds_Pct";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Item_Products" type="array" fkcolumn="Event_Item_Id" fieldtype="one-to-many" cfc="Event_Item_Products";
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
	property name="User_Activity" type="array" fkcolumn="Event_Item_Id" fieldtype="one-to-many" cfc="User_Activity";
	property name="Item_Type" fkcolumn="Item_Type_Id" fieldtype="many-to-one" cfc="Item_Types";
}


/**
*@output false
*@table Event_Sponsor
*@persistent true
*/
component{
	//identifier
	property name="Event_Sponsor_Id" fieldtype="id" generator="identity";

	//properties
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Id" fkcolumn="Event_Id" fieldtype="many-to-one" cfc="Event";
	property name="Sponsor_Id" fkcolumn="Sponsor_Id" fieldtype="many-to-one" cfc="Sponsor";
}


/**
*@output false
*@table Event_Item_Product
*@persistent true
*/
component{
	//identifier
	property name="Event_Item_Product_Id" fieldtype="id" generator="identity";

	//properties
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Event_Item_Id" fkcolumn="Event_Item_Id" fieldtype="many-to-one" cfc="Event_Item";
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
}


/**
*@output false
*@table Sponsor
*@persistent true
*/
component{
	//identifier
	property name="Sponsor_Id" fieldtype="id" generator="identity";

	//properties
	property name="Sponsor_Name";
	property name="First_Name";
	property name="Last_Name";
	property name="Address_1";
	property name="Address_2";
	property name="City";
	property name="State";
	property name="Zip";
	property name="Phone_Main";
	property name="Phone_cell";
	property name="Email";
	property name="Website_Url";
	property name="Logo_Filename";
	property name="Description";
	property name="Notes";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Sponsor_Events" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Event_Sponsor";
	property name="Sponsor_Users" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Sponsor_Users";
	property name="Sponsor_Products" type="array" fkcolumn="Sponsor_Id" fieldtype="one-to-many" cfc="Product";
}


/**
*@output false
*@table Sponsor_Users
*@persistent true
*/
component{
	//identifier
	property name="Sponsor_Users_Id" fieldtype="id" generator="identity";

	//properties
	property name="Primary_YN";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Sponsor_Id" fkcolumn="Sponsor_Id" fieldtype="many-to-one" cfc="Sponsor";
	property name="Users_Id" fkcolumn="Users_Id" fieldtype="many-to-one" cfc="Users";
}


/**
*@output false
*@table Product_Limit
*@persistent true
*/
component{
	//identifier
	property name="Product_Limit_Id" fieldtype="id" generator="identity";

	//properties
	property name="Limit_Value";
	property name="Limit_Svalue";
	property name="Limit_Id";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
	property name="Product_Limit_Type_Id" fkcolumn="Product_Limit_Type_Id" fieldtype="many-to-one" cfc="Product_Limit_Type";
}

/**
*@output false
*@table Product_Image
*@persistent true
*/
component{
	//identifier
	property name="Product_Image_Id" fieldtype="id" generator="identity";

	//properties
	property name="Default_YN";
	property name="Image_Name";
	property name="Image_Filename";
	property name="Create_Date";
	property name="Create_User";
	property name="Modify_Date";
	property name="Modify_User";

	//Relationships
	property name="Product_Id" fkcolumn="Product_Id" fieldtype="many-to-one" cfc="Product";
}
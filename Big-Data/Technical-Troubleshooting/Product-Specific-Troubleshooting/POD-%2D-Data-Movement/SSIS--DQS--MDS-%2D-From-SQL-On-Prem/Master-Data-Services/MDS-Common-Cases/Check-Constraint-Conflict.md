**Problem Statement**
Restoring the database from 2012 into a new SQL server 2017 that has MDS installed already. Error found:
>Microsoft.MasterDataServices.Configuration.ConfigurationException: SYSERR547|The DELETE statement conflicted with the REFERENCE constraint "fk_tbl_36_123_EN_tblModelVersion_Version_ID". The conflict occurred in database "MDS2017", table "mdm.tbl_36_123_EN", column 'Version_ID'., @ErrorNumber = 547, @ErrorProcedure = "mdm.udpModelDelete", line 82

**REQUEST**
Please provide the CREATE TABLE script for mdm.tbl_36_123_EN, including the FK definitions

After reviewing the file, I can see the Check Constraint statement related to fk_tbl_36_123_EN_tblModelVersion_Version_ID that is producing the error:

“Microsoft.MasterDataServices.Configuration.ConfigurationException: SYSERR547|The DELETE statement conflicted with the REFERENCE constraint "fk_tbl_36_123_EN_tblModelVersion_Version_ID". The conflict occurred in database "MDS2017", table "mdm.tbl_36_123_EN", column 'Version_ID'., @ErrorNumber = 547, @ErrorProcedure = "mdm.udpModelDelete", line 82

In the case there is a DELETE statement mdm.udpModelDelete on a table with a Check Constraint, the process will fail.  It would seem that the check constraint would need to be removed if there is a delete on that table, however, my expertise is limited in this area. I need verification from the SQL MDS Team as to the next plan of action. 

REQUESTED INFORMATION

Could you please verify what method you are using to upgrade MDS Database?

[Upgrade with Database Engine Upgrade](https://docs.microsoft.com/en-us/sql/database-engine/install-windows/upgrade-master-data-services?view=sql-server-ver15#engine)

[Upgrade with Restoring a Database from Backup](https://docs.microsoft.com/en-us/sql/database-engine/install-windows/upgrade-master-data-services?view=sql-server-ver15#restore)

 
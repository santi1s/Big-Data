**Problem Statement**
Customer requires advisory on how to upgrade SSIS packages from previous version of VS to Visual Studio 2019

**Resolution**
Migrate and then Upgrade each package
https://docs.microsoft.com/en-us/answers/questions/86501/sql-server-2016-migrate-ssis-packages-including-en.html

The customer can upgrade the packages on VS2019 by 
1) Opening the solution on that environment: File >Open >Project/Solution
2) Selects the solution from the folder where the packages are stored. 

The project will be upgraded at that time. 

More information about backups, moving, and upgrading SSISDB can be found in the support guide here:

https://docs.microsoft.com/en-us/sql/integration-services/catalog/ssis-catalog?view=sql-server-2017#backup

Detailed Steps
1) Origin server SQL 2012 SSIS 2012 & Destination to SQL 2019 SSIS 2019
2) Before upgrading SSIS, run Upgrade Advisor: https://docs.microsoft.com/en-us/sql/integration-services/install-windows/upgrade-integration-services?view=sql-server-ver15#before-upgrading-integration-services
3) Packages are 2012 then PackageFormatVersion is 
4) Install SSMS & SSIS on SQL 2019 https://docs.microsoft.com/en-us/sql/integration-services/install-windows/install-integration-services?view=sql-server-ver15
5) Create SSISDB Catalog https://docs.microsoft.com/en-us/sql/integration-services/catalog/ssis-catalog?view=sql-server-ver15
6) Create new projection in VS 2019 on new server Add existing package path...should automatically upgrade to current version of SSIS.
7) Create SSISDB and Folder for Porject
8) From VS Deploy to SSISDB to Target SQL DB SSISDB Folder Project

**Additional Notes**
1. He may need to point the connection managers to the right connections, etc. 
2. If the package contains any script task/script component, he will have to rebuild or recreate them in that environment as they may not work. 

   SQL 2012 and SQL 2019 SSIS have major changes, specifically related to script task.  Script task will complain on .net framework which is different in both SQL versions. You will need to open the script task of each package build it for SQL 2019, else this will fail on execution.
3. Then they should point the target server version to the right SQL server.
 
I am not aware of any specific documentation to do this
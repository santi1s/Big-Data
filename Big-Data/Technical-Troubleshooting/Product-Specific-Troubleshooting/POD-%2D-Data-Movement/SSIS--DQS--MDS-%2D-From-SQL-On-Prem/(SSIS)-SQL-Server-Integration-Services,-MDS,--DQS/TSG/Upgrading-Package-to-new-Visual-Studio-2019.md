**Problem Statement**
Customer requires advisory on how to upgrade SSIS packages from previous version of VS to Visual Studio 2019

**Resolution**
The customer can upgrade the packages on VS2019 by 
1) Opening the solution on that environment: File >Open >Project/Solution
2) Selects the solution from the folder where the packages are stored. 

The project will be upgraded at that time. 

**Additional Notes**
1. He may need to point the connection managers to the right connections, etc. 
2. If the package contains any script task/script component, he will have to rebuild or recreate them in that environment as they may not work. 
3. Then they should point the target server version to the right SQL server.
 
I am not aware of any specific documentation to do this
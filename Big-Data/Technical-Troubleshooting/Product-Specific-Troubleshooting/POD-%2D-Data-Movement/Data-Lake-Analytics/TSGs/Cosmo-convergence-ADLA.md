[[_TOC_]]
#Overview 
We have a few cases that are involve in Cosmo convergence ADLA.  These cases are always internal Microsoft customer. 
To verify if your internal Microsoft customer is using a Cosmo convergence ADLA account. You can follow the quick guide. 

##Step 1 : CMD
Open your CMD on your local machine and ping the name of the Cosmo convergence ADLA Account name. 
Follow up with 'azuredatalakeanalytics.net'.

For example, ping mycosmoadlaname.azuredatalakeanalytics.net 

![image.png](/.attachments/image-7fdbca6f-162d-4d02-8d59-ac19e2166089.png)

##Step 2 : Verify account
The result table below will tell you which is Cosmo convergence and which is purely ADLA

ADLA 
nl10
ie11
us12
us15


Cosmo convergence 
us80
us81

##Step 3 : ICM Process
IF and when its a Cosmo convergence and you are needing to file an ICM, then refer to the below :
https://portal.microsofticm.com/imp/v3/incidents/details/224015738/home

The owner service should be file under "Cosmo Analytics" then the owning team correlate to the issue. 
![image.png](/.attachments/image-ff4858c0-88c6-4405-bb57-a6f5fd79a281.png)
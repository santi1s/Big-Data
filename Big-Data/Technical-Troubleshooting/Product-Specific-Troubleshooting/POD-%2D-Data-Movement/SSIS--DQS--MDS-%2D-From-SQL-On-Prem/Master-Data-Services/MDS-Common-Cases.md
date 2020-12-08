Problem Statement

Error found: 

Microsoft.MasterDataServices.Configuration.ConfigurationException: CREATE or ALTER ASSEMBLY for assembly 'Microsoft.MasterDataServices.DataQuality' with the SAFE or EXTERNAL_ACCESS option failed because the 'clr strict security' option of sp_configure is set to 1. Microsoft recommends that you sign the assembly with a certificate or asymmetric key that has a corresponding login with UNSAFE ASSEMBLY permission. Alternatively, you can trust the assembly using sp_add_trusted_assembly.

 

**Possible Cause**

**Documentation**

https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/clr-strict-security?view=sql-server-ver15

CLR uses Code Access Security (CAS) in the .NET Framework, which is no longer supported as a security boundary. A CLR assembly created with PERMISSION_SET = SAFE may be able to access external system resources, call unmanaged code, and acquire sysadmin privileges. Beginning with SQL Server 2017 (14.x), an sp_configure option called clr strict security is introduced to enhance the security of CLR assemblies. clr strict security is enabled by default, and treats SAFE and EXTERNAL_ACCESS assemblies as if they were marked UNSAFE. The clr strict security option can be disabled for backward compatibility, but **this is not recommended**. Microsoft recommends that all assemblies be signed by a certificate or asymmetric key with a corresponding login that has been granted UNSAFE ASSEMBLY permission in the master database. SQL Server administrators can also add assemblies to a list of assemblies, which the Database Engine should trust.  For more information, see [sys.sp_add_trusted_assembly](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fsql%2Frelational-databases%2Fsystem-stored-procedures%2Fsys-sp-add-trusted-assembly-transact-sql%3Fview%3Dsql-server-ver15&data=04%7C01%7Ctiffany.fischer%40microsoft.com%7C5983b1ef4a574a05909e08d896cf04a3%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C1%7C637425163203967639%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=vBP%2FesjSoaL4l%2BN1Ug4NLuGA4kZDDtNEItkAj0wv9b0%3D&reserved=0).


**Possible Solution**
We had created 2 logins/users (“mds_dlp_login”, “mds_clr_user” ) which has been granted the UNSAFE ASSEMBLY permission for this purpose.

Can you validate that the generated database upgrade script contains these logins create scripts and if these login/user is not disabled?

Also as upgrade is a one time activity, we can also ask the customer to disable the 'clr strict security' before the upgrade and the once the upgrade is completed, re-enable 'clr strict security'. Disable the 'clr strict security' will not impact the upgrade. Customer can disable 'clr strict security' then re-enable it after upgrade.

**REQUESTS**

- Can you validate that the generated database upgrade script contains these logins create scripts and if these login/user is not disabled?
- Is it feasible to disable ‘clr strict security’ and then re-enable it after upgrade?
 
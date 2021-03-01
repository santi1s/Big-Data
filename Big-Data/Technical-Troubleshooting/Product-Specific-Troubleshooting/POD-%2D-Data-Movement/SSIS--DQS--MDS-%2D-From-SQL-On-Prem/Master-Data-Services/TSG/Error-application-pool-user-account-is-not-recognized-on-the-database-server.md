**ERROR**
Error 'the application pool user account is not recognized on the database server'

**PROBLEM DETAILS**
We have built two servers to use MDS (Master Data Service) 2019. One server for IIS and MDS, and the other server for SQL. In the MDS configuration, when we try to create web application using a domain account, the ok button is grayed out. If we try to use a local account, as recommended in the microsoft article, we get the error 'the application pool user account is not recognized on the database server'. That error makes sense because SQL is installed in a different server. We need to be able to use the domain account.

**SOLUTION**
On the IIS Server, do the following:
1. Create a local machine account.
2. Using Master Data Services Configuration Manager, create a Master Data Services database on the remote SQL Server.
3. Using Master Data Services Configuration Manager, create a Master Data Services database on the IIS host with the same name as the database on the remote SQL Server
4. On the Web Configuration page of Master Data Services Configuration Manager, select Create New Website, from the Website dropdown. 
5. In the Create Website dialog, add the credentials of the local account then click OK
6. After the site is created, in the Associate Application with Database section, select the database on the local IIS Server.
7. Click Apply.
8. After the Website has been created, close Master Data Services Configuration Manager
9. Open IIS Manager and Expand the Application Pools then select the Application Pool associated with the MDS Website.
10. Right Click on the Application Pool and select Advanced Properties.
11. Edit the Identity and replace the local account with the domain account.
12. Open Master Data Services Configuration Manager and  in the Associate Application with Database section, select the database on the Remote instance of SQL Server then click Apply.
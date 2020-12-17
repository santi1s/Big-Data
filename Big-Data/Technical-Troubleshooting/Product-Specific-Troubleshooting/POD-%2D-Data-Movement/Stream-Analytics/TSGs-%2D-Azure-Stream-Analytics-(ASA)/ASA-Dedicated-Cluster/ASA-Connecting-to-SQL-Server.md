One requirement for this to work was that the SQL server needs to be configured with an SSL certificate issued by a trusted CA.

1- Regarding SSL Certificate -  Make sure to use the DNS based FQDN for the CN.  Here are the full requirements listed. 

2- SSL Setup in the VM - Follow steps here. If using SQL 2016 , Also put the certificate’s thumbprint in the registry key mentioned in the “Wildcard Certificates” section. 

[Certificate requirements link](https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/enable-encrypted-connections-to-the-database-engine?view=sql-server-2017#certificate-requirements)
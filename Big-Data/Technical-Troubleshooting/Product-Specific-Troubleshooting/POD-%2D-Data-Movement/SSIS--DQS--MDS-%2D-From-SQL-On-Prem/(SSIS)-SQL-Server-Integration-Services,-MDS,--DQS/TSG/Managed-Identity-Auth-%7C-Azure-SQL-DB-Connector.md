Customer wants to deploy the SSIS Package that will send data to an Azure SQL DB using Managed Identity Authorization.

- SSIS SQL Drivers, OLE and OCDB Drivers do not allow authentication using AAD.  
- An alternative option is to use ADF Azure-SSIS IR to execute SSIS Package to Azure Blob Store to connect & copy to Azure SQL using Managed Identity authentication.  I have provided support guides for this process below:
    - [SQL Server data to SQL Database with Azure Data Factory - Team Data Science Process | Microsoft Docs](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/move-sql-azure-adf)
    - [Azure Storage connection manager - SQL Server Integration Services (SSIS) | Microsoft Docs](https://docs.microsoft.com/en-us/sql/integration-services/connection-manager/azure-storage-connection-manager?view=sql-server-ver15#managed-identities-for-azure-resources-authentication)
- Other Sinks may permit MI auth when using the SSIS Azure Pack

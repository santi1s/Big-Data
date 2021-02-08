On-Prem SQL Server wherein you were unable to connect to it from the Azure VM. Below is the error

·        SQL Server you were connecting was 2012 RTM which doesn’t support connections over TLS 1.2. On the Azure VM, we had TLS 1.0 and TLS 1.1 disabled which could be causing it to fail.

·        Either On-Prem SQL Server has to be upgraded to latest available Service pack and make sure TLS 1.2 is enabled on the On-Prem machine or we can enable TLS 1.0 on the Azure VM and see if that resolves the issue.

·        Downloaded 3rd party GUI tool IIS crypto which provides GUI interface to enable or disable the security protocols along with the cipher suites, Hashes and Key Exchanges. Below is the link:

https://www.nartac.com/Products/IISCrypto

·        Checked Best Practices which enabled TLS 1.0, TLS 1.1 and TLS 1.2 and related Ciphers, Hashes and Key Exchanges on the Azure VM. Post rebooting the server, we were able to connect to SQL Server.
**Example to Check TLS Handshake using Netmon**

[Video Training Here](https://msit.microsoftstream.com/video/6d38a4ff-0400-b9eb-f733-f1eb2b3ecac6)

**Why do we need TLS handshake to provide secure communication between client and server?**

1) Client and Server need to understand each other using common cipher 

2) How to make the communication secure with a secret key that can only be understood by the client can only be understood by the server. 

3) Authentication & PKI need to establish a trust from the server to validate authenticity of the server. 

 

**Connection Encrypted string of the TLS handshake** 

1) Client initiate  

2) Serve response 

3) Serve provided certificate 

4) client will use certificate to create the key encryption  

5) client provided key to the server cipher specific 

 

**Tools to get a network trace**  

1) Netmon  

2) CMD>netsh trace start capture=yes scenario=NetConnection tracefile=c:%computername%.etl maxsize1024 filemode=circular overwrite=yes 

**Using Netmon SERVER HTTP** 

1) New Capture bing.com 

2) filter “tls” 

3) select traffic only from firefox 

4) right click to filter for TLS 

5) Ex see client tls, all cipher suites that cipher accepts & server picks the cipher. Server hello sends the certificate and the handshake will show the cipher sweet accepting and the TLS version it agrees to.  

6) Trust will show the valid server 

7) Client Key exchange 

8) then see communications 

 

**Netmon TCP** 

TLS can be used over TCP or HTTP 

When page complete loads see communicating SSL 

 

DEMO Walkthrough with SSIS server & Proxy 

SSIS HTTP Connection manager test script  

Netmon on Server - (http or TCP no TLS not secured) 

Netmon on Proxy – (TLS secure) know destination ipaddress  to identify the connection 

1) Client hello 

2) Server Hello 

3) client key exchange – ready to communicate! TLS is working fine 

4) can also filter using the Source Port & Destination Port 

EX Problem Visual Studio SSIS 2015 does not http_conneciton manager goes over TLS 1.0 

Look for encryption alert 

 

Need to run as administration 

Would require restart on server 

EventLogging 000001 > capture 

IIS Crypto nartac software 

 

 
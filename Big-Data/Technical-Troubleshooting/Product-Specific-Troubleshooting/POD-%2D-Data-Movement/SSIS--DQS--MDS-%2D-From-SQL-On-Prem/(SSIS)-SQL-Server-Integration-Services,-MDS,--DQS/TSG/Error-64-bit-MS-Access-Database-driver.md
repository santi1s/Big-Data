This may be necessary when transferring files to another VM server or Sharepoint server.

Install the new Microsoft Access Database engine 2016 driver – Note this installer will install both ACE 16.0 as well as ACE 12.0 together.
https://www.microsoft.com/en-us/download/details.aspx?id=54920 
i.                 Download both together.
 ![image.png](/.attachments/image-780ba59c-47b7-4e55-9f10-4239f14f3f81.png)
ii.                Install 64bit for now. Confirm using 64bit UDL that you are seeing both drivers installed.
 
 ![image.png](/.attachments/image-cc3cacc0-f28b-42f7-a742-fd8e9b56a1da.png)
 
iii.               Only if they use Visual Studio-SSDT and develop SSIS packages on the same machine, install the 32bit version.
NOTE: You need to use elevated command prompt and then run the 32bit installer file with /quiet option.
 ![image.png](/.attachments/image-12d93801-fe81-461b-a080-9316a869ef23.png)
Else you will see,
 ![image.png](/.attachments/image-6222c878-a990-4b7c-b2fe-09ed76a63163.png)
 
 
Confirm installation using 32bit UDL file
 ![image.png](/.attachments/image-2c9916b3-4357-4595-8b91-74ffc0b0b5a4.png)
                     
Use UDL 64bit and test connection to the same excel file:
 
Now use the 64bit UDL file, provide the path to the excel file used in the SSIS package, set the extended properties (All tab – EXCEL 8.0 for XLS format files and EXCEL 12.0 for xlsx format files) and test connection.
![image.png](/.attachments/image-b638eecd-bffc-4afc-8686-652ac5871d44.png)    
  ![image.png](/.attachments/image-23656051-fd54-45e2-a940-8376ecde93aa.png)
If the connections fails with the same “Class not registered” then we have isolated the issue outside SSIS. Any other errors, just confirm that you have configured the details in the UDL properly.


PROCESS MONITOR TRACE:
Collect a process monitor traces while reproducing the issue – Either from UDL or SSIS package run depending on whether we are able to reproduce the issue externally or not.

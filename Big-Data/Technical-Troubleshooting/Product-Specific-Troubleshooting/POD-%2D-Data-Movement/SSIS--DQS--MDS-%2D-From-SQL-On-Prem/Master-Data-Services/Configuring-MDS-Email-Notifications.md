I am sharing steps on how to setup MDS notifications. The below implementation uses Gmail account as Microsoft account restricts us from using our SMTP server and configuring new SMTP server is a complex procedure.

1.	To configure Database Mail using a wizard [Configure Database Mail - SQL Server | Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fsql%2Frelational-databases%2Fdatabase-mail%2Fconfigure-database-mail%3Ff1url%3D%253FappId%253DDev15IDEF1%2526l%253DEN-US%2526k%253Dk(sql13.swb.dbmail.sendtestemail.test.f1)%2526rd%253Dtrue%26view%3Dsql-server-ver15&data=04%7C01%7CTiffany.Fischer%40microsoft.com%7Ca8454396ecf74ee392d308d898368859%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C1%7C637426707806378459%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=OwZqyOGrLX3eyBvU5GWbcvZ9apYVBIeQxtCFnGvf3Gw%3D&reserved=0)

    i.	In SSMS Object Explorer, expand the node for the instance you want to configure Database mail.

    ii.	Expand the Management node.
    
    iii.	Right-click Database Mail, and then click Configure Database Mail.

    iv.	Complete the Wizard dialogs. On the New Account Page, create a new Database Mail account. A Database Mail account contains information for sending e-mail to an SMTP server.

    v.	You need to provide the Gmail account in e-mail address and server name as smtp.gmail.com.

    vi.	Use Basic authentication and provide password of the Gmail account.

Similarly you can configure it for any other mail servers
![image.png](/.attachments/image-d99944c0-61ce-4504-a94e-ba070a82ab41.png)

    vii.	Once rest of the steps are performed, you can test db mail.
    
    viii.	Right Click on Database Mail and select Test E-mail. Choose the profile you created and provide the receiver email id and click on Send Test E-mail.

![image.png](/.attachments/image-c929edc3-cdef-4b85-9961-0d5c1fca6bdc.png) 
If you do not get any email, then you can check for logs under Right click on Database Mail  View Database Mail Log.

 ![image.png](/.attachments/image-fb050ccf-cf4c-47e9-8815-c401cc117f2f.png)

2.	You need to enable the option to "Allow less secure apps". This is a [setting](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmyaccount.google.com%2Flesssecureapps&data=04%7C01%7CTiffany.Fischer%40microsoft.com%7Ca8454396ecf74ee392d308d898368859%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C1%7C637426707806388416%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=0tRxo31TDnfOuJ4d94FnljXTgLwJ%2FFDCCKAOXUDNzoo%3D&reserved=0) in your Gmail account that needs to be enabled.
![image.png](/.attachments/image-ea3390cc-5ebe-447f-9dc7-0c7182a21e67.png)
 

3.	Configure MDS database for notifications.
On MDS configuration manager, choose the db mail profile you created after selecting the required MDS database. In below image, I have selected the profile gmail.
 ![image.png](/.attachments/image-48bf81ed-fc45-4863-be69-d183ad864311.png)
Apply the changes.

For more details on when notifications are sent you can refer: [Notifications - SQL Server Master Data Services | Microsoft Docs](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fsql%2Fmaster-data-services%2Fnotifications-master-data-services%3Fview%3Dsql-server-ver15&data=04%7C01%7CTiffany.Fischer%40microsoft.com%7Ca8454396ecf74ee392d308d898368859%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C1%7C637426707806388416%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=DwX88jvNxDJIjNHBNEkQq8HZdV9468E55bixNtHHLIg%3D&reserved=0)

Example, if you have configured change sets, then you will receive email as below.
 ![image.png](/.attachments/image-7de1e2d3-5e98-4b3b-a546-a4b6080881a2.png)
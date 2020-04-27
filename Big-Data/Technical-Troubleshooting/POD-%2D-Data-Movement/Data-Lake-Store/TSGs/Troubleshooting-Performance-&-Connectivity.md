--WIP--

Scoping questions to ask when troubleshooting connectivity issues:
======================================================

- What is the error message you are receiving? 
- Have you had this issue before, or are you suddenly seeing it now for the first time?
- Is there a firewall on your data lake?
- What is the file path you're trying to connect to?
- Is the connection erratic? Do you have timestamps of the last time you received the error?
- What type of environment are you connecting from? 
- Is there a VNet attached to your Data Lake, or is your Source connection point within a VNet? If so, what is the name of the VNet and Subnet?
- Ask for fiddler or wireshark trace before involving networking team (if needed)


**Fiddler Trace** 

1. Install Fiddler from http://www.telerik.com/download/fiddler/fiddler4 if not already done 

1. Launch fiddler, then click Tools > Fiddler Options 

1. Click the ‘HTTPS’ tab. 

1. Verify the options are set as shown in this screenshot: 
 

 ![GetImage.jpeg](/.attachments/GetImage-6ac74b9e-3806-43a9-916f-f0d0b8064ddf.jpeg)


5. If fiddler prompts you to trust their root certificates, then click ‘Yes’. 

1. Then navigate to repro the problem while fiddler is capturing traffic. 

1. After the trace is captured, go to File > uncheck box next to Capture Traffic 

1. File > Save > All Sessions and send the traces to me. 

 

Note: Once we are completed with troubleshooting please uninstall this application from your computer.  

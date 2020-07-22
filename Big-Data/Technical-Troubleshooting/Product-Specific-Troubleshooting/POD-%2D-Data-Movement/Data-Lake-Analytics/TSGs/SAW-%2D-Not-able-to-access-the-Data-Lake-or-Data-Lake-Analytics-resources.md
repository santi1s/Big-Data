SAW workstation provides a Dev VM that allows them to access Corpnet stuff like the portal. 
Should be an icon called MSIT_WIN10 on desktop that allows access to a VM.

If you are not able to log into the WIN10 Vm machine on your computer.
Please reach out to the SAW support to remove the existing machine and install a new VM and link it up to Microsoft Corp account. 
Once you have your VM you can login using your credential then your should be able to see all your resources. 

**To contact SAW engineer support**
Submit a support ticket on Core Services Engineering Portal:
https://microsoft.service-now.com/sp?id=get_help
Most likely someone will reach out to help you setup your VM and then transfer your ticket to another engineer. 


**Second engineer from SAW will help you get your VM sync with Corp net**
Instruction to link the VM to Corp net
SAW Engineer will request you to follow these steps: 
• Log on to the VM using a local administrator account. 
• Download Global Protect from https://microsoftapc-my.sharepoint.com/:u:/g/personal/v- barite_microsoft_com/EXQ8HbRgd1pBnpl95OUgGowB0XLNXmep_cv6KXYN38_rEA?e=8YlogI 
• Install Global Protect Desktop and enter msftvpn-alt.ras.microsoft.com in the portal address. 
• After Global Protect Desktop shows "Connected” 
• Click Start and Type "Control" 
• When the Control Panel is found, open it and type 'System' in the search bar. 
• In the search results, click on 'System'. 
• Under the 'Computer name, domain, and workgroup settings' header, click 'Change settings'. 
• Click 'Change'. 
• Click 'Member of' and enter the short name for the domain being joined such as Redmond, NorthAmerica, or Fareast 
• Click OK and then enter domain credentials. 
• Do not restart the VM when prompted. 
• Type netplwiz.exe into Cortana and hit enter 
• User accounts will open. 
• Click 'Add' 
• In the "User name" field, enter alias of the user and for "Domain" enter the user’s domain 
• Click Next and then select Administrator 
• Click Next and Finish. 
• Restart the VM and login back with the Local Administrator Account . 
• Connect to corporate network using Global Protect Desktop 
• After VPN shows "Connected", open File Explorer and navigate to the Windows\System32 folder (usually on the C:\ drive). 
• In Search at the upper right, type certmgr.msc 
• When found, hold the Shift key and right click and Select "Run as a different user". 
• Enter domain credentials. (This will cache the Domain Credentials on the PC) 
• Press CTRL-ALT-DEL and select Switch user. 
• At the Windows Logon screen, select Other User. 
• Log on using the corporate account information (e.g., domain\alias). 
• Connect the Global Protect and MSFTVPN • Run gpupdate /force command in the command window.

Feel free to contribute more if you find any useful information. I hope this help!

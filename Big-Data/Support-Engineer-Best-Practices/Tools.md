[[_TOC_]]

# Case Assignment Tools

## CRM Bot

What is the "CRMGlobal Bot"?
The bot is based on the Language Understanding (LUIS) service within Azure, and therefore represents a true Microsoft-on-Microsoft solution.  It can respond to natural language requests and is designed to become "smarter" over time.

The Bot is not VDM.  It communicates with CRMGlobal to get info or assign cases thru VDM.  They are friends, though - 

	[11/21 10:14 AM] CRMGlobal Bot
	Sure I will talk with my friend the Virtual Duty Manager 

**To Download**

 In the search bar in Teams, type CRMGlobal Bot and you should see a choice to chat with the Bot.  
Click it.
![image.png](/.attachments/image-498f956f-4bde-49a0-878e-81c2cea0f14e.png)

If you can't find it this way, use these steps:

1. Download the bot app.  Click here… http://aka.ms/CRMGlobalBot, Click Download. (Leave the file Zipped)
2. Open Microsoft Teams and click the "Apps" button in the bottom-left corner.
3. When the list of apps appears, click the "Upload a custom app" option in the left-hand navigation list.
4. In the explorer dialog, upload the zip file you downloaded earlier.
The "CRMGlobal Bot" will now available from the ellipsis menu on the left:	
![image.png](/.attachments/image-28d568c8-1465-4e22-a882-d299564d8ccd.png)

Right click the CRMBot and then select 'Pin' to keep it in your Teams Menu.

![image.png](/.attachments/image-30d3886f-83d7-4ecf-84bf-d695166faa8a.png)

**To Use**
Ask the bot "What can you do?".  Most of what we will use the bot for in SQL will be 3. Service Request
	
	

The bot will respond with sample list of commands.  Depending on your role, you may not be able to do them all.
![image.png](/.attachments/image-027c2b36-d1e4-40f5-8664-cf4f18116519.png)

**Main Functions for Engineers**

• **Subscribe to alerts** when a case is assigned to you or someone else
Ex: "Tell me when I’m assigned a case" or "Tell me when John Doe is assigned a case" or "Tell me when jdoe@microsoft.com is assigned a case"

• **Unsubscribe** to existing case assignment alerts
Ex: "Show me my alerts" (then follow the prompts to make existing alerts Active or Inactive)
 
• **Ask for a new case** when you have capacity (and get case assignment credit)
(This basically puts you next in line for a case.  If no cases exists, you will just wait for assignment)
Ex: "Assign me a case" or "Give me a new case"
 
• **Assign a specific case** to you (and get case assignment credit)
Ex: "Assign case 119XXXXXXXXXXXX to <your alias or full name>" 
If you receive an error like this, "Sorry I couldn't find a service request with number 1191xxxxxxxx."  Double check to make sure the SAP is correct and that this is not a collab or Rave case.  VDM will not know about Rave or collabs and it is only tracking SAP's for groups that are using VDM.
	 
• If you ever feel like the Bot is mid-conversation or misunderstood you, you can make it **start over**
Ex: "cancel"
		
**NOTE:**  There is not a command to "give me credit" for a case.  You must ask for the case thru the Bot and have VDM assign you the case.  If you yank the case directly (or  DM or someone assigns it) thru Service Desk, then VDM will not know about this and you will not get credit.  Contact your Case Assignment Lead or Manager for manual credit (SQL VDM Assignment Leads <SQLAL@microsoft.com>).


# Email Tools

## OL Helper

[OL Helper](http://toolbox/OLHelper) is an Outlook tool that you can install to create case-specific inboxes in your outlook.

![image.png](/.attachments/image-45d9cba3-f116-46e0-bf06-b29a88058cba.png)

## Case Ninja

[Case Ninja](https://aka.ms/caseninja) is a configurable outlook tool that can throw up a banner when you're assigned a case or a critsit, so you don't miss case assignments or other important case emails.

## OOFSponder

[OOFSponder](http://toolbox/oofsponder) is an Outlook tool that will automatically set your OOF messages depending on your shift times.

# Case Tools

## Case Buddy

[Case Buddy](https://aka.ms/casebuddy) is a comprehensive case-management tool that works alongside service desk to manage cases. In-built timers, in-built note takers, ability to create and manage categories and personalize your queue views.

## Case Parser Studio

[Case Parser Studio](https://microsoft.sharepoint.com/teams/EAST/SitePages/Case-Parser-Pro.aspx) is a case history viewer that prioritizes usability. It can help you quickly identify prior case owners, understand severity level changes, and view all case notes as a single continuous page.

## Case Triage

[Case Triage](https://aka.ms/casetriage) is a tool you can use to create filters/views of cases. Be that open, closed, SLA Met, FDR, specific products, specific engineers-- It is a filtering tool to allow you to review cases and is available online.

# Productivity Tools

## ClipMon

[ClipMon](https://aka.ms/clipmon) is a tool that you can use to quickly access cases, ICMs, Chat, or Email all using the 'Copy' function on your machine!

Copy a case number, ICM number, or alias to your clipboard and ClipMon will pop up asking if you want to open the case in Service Desk, or ICM using the ICM tool, or if you want to create a email or chat! So helpful!

![image.png](/.attachments/image-d636c626-9236-4ed0-af31-b6d5b99f8597.png)
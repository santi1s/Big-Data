**This is the current process for our Service Desk tool, and covers only the basics for picking up a case/collaboration from the queue, or starting a case/collaboration that has been assigned to you.**

[[_TOC_]]


# Taking a Case or Collab from the Queue

## If your team is using Virtual Duty Manager (VDM)

### Taking a Case
If your team is using the Virtual Duty Manager, don't cherry-pick cases out of the queue. Let the VDM do its job.

Instead-- if you are a new engineer ready to take cases, do one of these things:
1. Let the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) know you are ready for a case by saying "Give me a case" or "I want a case" and it will assign you the next available case that meets your severity and product restrictions.
2. Let your Assignment Lead or Manager know you're ready to be in the queue. You can be set to 1 case a day to get started.

If you are not a new engineer and you have capacity to take more cases, do this:
1. Let the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) know you are ready for a case by saying "Give me a case" or "I want a case" and it will assign you the next available case that meets your severity and product restrictions.
2. Or if there is a specific case you are taking from a teammate, or for a customer, then use the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) to assign the case to yourself by saying "Assign CaseNumber to me"


### Taking a Collaboration

If you are picking up a collaboration while your team is using VDM-- Virtual Duty Manager is not aware of Collaborations


## If your team is NOT using VDM

###Find Cases in Your Technology
1. On Your Service Desk Home Page, visit the Unassigned Cases Tile and Select 'View All'
Or visit this site: https://servicedesk.microsoft.com/#/mycases/unassignedcases
![image.png](/.attachments/image-6e6fcb9c-446a-498a-9529-ce0690a8e864.png)

2. Your Unassigned Cases should already be narrowed to the queues you are a part of, so you can just look at the 'Support Area Path' column to find cases relevant to your technologies.

2. However, you can also edit the table to view cases for only specific Technologies, by clicking "Show Editor"
![image.png](/.attachments/image-b6447dd0-7569-4303-aa5c-a9433ee459ae.png)
Here you can add  filter for "Support Area Path", make sure it starts with your technology (in this example, Data Factory) and 'Save As'. You'll be saving this as a new view that you can switch to anytime you want to see cases of a specific technology. 
![image.png](/.attachments/image-3dae1860-1f69-4da4-8d16-2b4086ca83c4.png)

###Check Severity and Customer Support Level`
1. On Your Service Desk Home Page, visit the Unassigned Cases Tile and Select 'View All'
Or visit this site: https://servicedesk.microsoft.com/#/mycases/unassignedcases
![image.png](/.attachments/image-6e6fcb9c-446a-498a-9529-ce0690a8e864.png)

2. Check the 'Sev' column to check Severity, or the 'Service Level' column to check if it is a Professional or Premier Case

###Check If It Is a Full Case or a Collab

1. Check the Type column to see if the pending task is a Collaboration, or a full Case
![image.png](/.attachments/image-5542aad7-831c-43ce-ac75-2b7c833d9134.png)

###Self-Assign Case
1. To Self-Assign a case, open the case in Service Desk and choose "Edit"
![image.png](/.attachments/image-7448aab0-4243-45e0-968a-25b19e554012.png)

2. Then select 'Assign to Me'
![image.png](/.attachments/image-a6a20aa5-985f-4c8d-aa82-aaffacdc32f5.png)

###Self-Assign Collaboration
1. To Self-Assign a collaboration, open the Case in Service Desk and choose "Edit"
![image.png](/.attachments/image-7448aab0-4243-45e0-968a-25b19e554012.png)

2. Scroll down to the 'Tasks' Tile, be sure you are on the 'Collaboration' view, and choose the ellipsis button next to the collaboration you are picking up.
![image.png](/.attachments/image-26526cef-f5dc-418b-9c4c-14784465382f.png)

3. Choose 'Assign to Me'
![image.png](/.attachments/image-9876a496-d968-4d1d-b07b-77cf9d15b16a.png)


###Notify DMs (Duty Managers)
After you have assigned a case or collaboration to yourself, be sure to reach out to your duty managers to let them know they no longer need to find a case owner.

Email: sqldmmdt@microsoft.com

Email Title: <Case Number> Assigned to <Your Alias>

Email Body:
I am picking up <Case Number>. Thank you!

# Starting a Case that Has Been Assigned

If a case has been assigned to you by the duty managers, you should get an email with a title similar to this:

Case Assignment: <Case Number> /Professional  Sev C / SLA - 1h 49m left

or 

Collaboration Assignment: <Case Number> /Professional  Sev C / SLA - 1h 49m left

You will not need to assign it to yourself after this! All you will need to do is check 'My Cases and Tasks' in Service Desk, and you will find that the assigned case is now there!


##Were You Assigned a Case or a Collaboration?

There are three ways you can check if you were assigned a case or a collaboration.
1. The assignment email will designate if you have been assigned a case or a collaboration, the email title will either say: "Case Assignment" or "Collaboration Assignment" right in the title.

2. You can check the case itself! Open the case in Service Desk and check the case owner. If it is you, then it was a case assignment!
![image.png](/.attachments/image-f2d4b756-a517-42e5-886b-7c9a2c38cdde.png)
If it was not you, scroll down to the 'Tasks' tile, make sure 'Collaboration' tab is selected, and check collaboration owner:
![image.png](/.attachments/image-2ad81f6c-e4f7-463d-beb0-6fe6f4072f3e.png)

3. You can Check the 'My Cases and Tasks' tile in Service Desk
Your list of cases has a column called 'Type' that will tell you if an assignment is a case or a Collaboration
![image.png](/.attachments/image-ca7ae09f-60dd-4dd5-985d-d8747afcfbbf.png)

##Check SLA

There are two ways to check current SLA (time until we have agreed to contact the customer).
1. In the case! Open the case in Service desk, and in the Details there is an SLA box, which shows the current time until SLA.
![image.png](/.attachments/image-c47e504d-03c9-4b8c-9cb2-43406d979a37.png)

2. Under the My Cases and Tasks tile you can click 'View All' and in that table there is an 'Initial Response SLA' column, which will tell you if the SLA was met, missed, or how much time is left.
![image.png](/.attachments/image-fd3259c3-a63b-459f-bf4e-23b746dda2ba.png)

## Check Customer's Communication Preferences

When a customer opens a case, they can choose if they prefer phone or email communications. You can check this under the 'Contacts' tile in the case. Look for the little 'preferred' marker which will either be by the phone number or email address.
![image.png](/.attachments/image-0d38178e-29a2-494a-91b9-d2a32c8f2971.png)

Please respect this preference at least for the first communication and feel free to confirm their preferences for further communications in that conversation.

Even if a customer lists 'Phone' as their preferred communication method, send an email before you call them so they have your contact information, and mention you will reach out to them shortly be phone.

##Getting Started Best Practices/Checklist

1. Check SLA and be sure to call or email the customer before this SLA time.
2. If you have a good amount of SLA time left, do some research and try to give the customer a solution, or provide questions/next steps in your first contact!
3. If you have very little SLA time left, reach out to a customer in an email introducing yourself, saying you are currently reviewing their issue and will reach out shortly with next steps.
4. Don't forget to change case state in the top, right-hand corner!
![image.png](/.attachments/image-4b5c9aca-8b5f-4fdf-bda8-ddb14f016d72.png)

5. If you have provided any information or suggestions that you believe could resolve the case, change the case status to 'Waiting for Confirmation' and leave it there for the duration of the case. 

6. Even if a customer lists 'Phone' as their preferred communication method, send an email before you call them so they have your contact information, and mention you will reach out to them shortly be phone.

**7. Don't forget to click "Save" and/or to use the 'End' button rather than clicking directly out of the tab on a case. Just to make sure everything gets saved on the backend.**

Troubleshooting

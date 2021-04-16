<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#f64e4e;background-color:#f9cccc;border-width:3pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  



DfM wiki for dashboards and views: https://dev.azure.com/CSSToolsPM/Dynamics%20for%20Microsoft/_wiki/wikis/DfM/77/Dashboards-Views

</td>
</tr>
</table>

**This guide covers only the basics for picking up a case/collaboration from the queue, or starting a case/collaboration that has been assigned to you.**

[[_TOC_]]


# Taking a Case or Collab from the Queue

##Find Cases in Your Technology

### DfM
1. Go to aka.ms/oneSupport
2. Select the + button at the top of the page and choose 'Cases'
![image.png](/.attachments/image-14ccda78-48ae-48bf-a5f0-582e84d90224.png)
3. Select the carrot next to the current view's name, and navigate to "Unassigned Cases in Queues I'm a Member of"
![image.png](/.attachments/image-b7a1ecf4-d5f0-44d4-8b63-f0059d09ce18.png)
4. Here you can see all unassigned cases, and can filter by any column, including Support Area Path, which you can use to search for a specific technology.
![image.png](/.attachments/image-b5eee49f-2864-42c5-8615-decfccba8646.png)
5. Check the "Severity" column for the severity of the case, and "IR SLA remaining Time" column to see how much time is left before the case needs to be owned and the customer contacted.

### Service Desk
1. On Your Service Desk Home Page, visit the Unassigned Cases Tile and Select 'View All'
Or visit this site: https://servicedesk.microsoft.com/#/mycases/unassignedcases
![image.png](/.attachments/image-6e6fcb9c-446a-498a-9529-ce0690a8e864.png)

2. Your Unassigned Cases should already be narrowed to the queues you are a part of, so you can just look at the 'Support Area Path' column to find cases relevant to your technologies.

2. However, you can also edit the table to view cases for only specific Technologies, by clicking "Show Editor"
![image.png](/.attachments/image-b6447dd0-7569-4303-aa5c-a9433ee459ae.png)
Here you can add  filter for "Support Area Path", make sure it starts with your technology (in this example, Data Factory) and 'Save As'. You'll be saving this as a new view that you can switch to anytime you want to see cases of a specific technology. 
![image.png](/.attachments/image-3dae1860-1f69-4da4-8d16-2b4086ca83c4.png)

3. Check the 'Sev' column to check Severity, or the 'Service Level' column to check if it is a Professional or Premier Case

##Check If It Is a Full Case or a Collab

### DfM

In DFM it is clear if a task is a case or a collaboration.
A case has a number in a format like this: 2000000000000000
A collaboration or child case, has a number in a format like this: CAS-000000-000000

In the case list you will also see that collaboration cases have parent cases listed.

![image.png](/.attachments/image-b34ae03b-0e6f-4319-94fa-03d8f5ed9358.png)


### Service Desk
1. Check the Type column to see if the pending task is a Collaboration, or a full Case
![image.png](/.attachments/image-5542aad7-831c-43ce-ac75-2b7c833d9134.png)


## Taking a Case or Collaboration
If your team is using the Virtual Duty Manager, don't cherry-pick cases out of the queue. Let the VDM do its job.

**If there is a specific case you are taking from a teammate or handoff, do this:**

1. Use the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) to assign the case to you to make sure you receive proper credit by saying "Assign <Case#> to me"
2. If the case it already assigned it will ask you to confirm, say Y and the case will be assigned to you and you will receive credit.

**If you are a new engineer ready to take cases, do one of these things:**
1. Let the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) know you are ready for a case by saying "Give me a case" or "I want a case" and it will assign you the next available case that meets your severity and product restrictions.
2. Let your Assignment Lead or Manager know you're ready to be in the queue. You can be set to 1 case a day to get started.

**If you have capacity to take more cases, do this:**
1. Let the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) know you are ready for a case by saying "Give me a case" or "I want a case" and it will assign you the next available case that meets your severity and product restrictions.
2. Or if there is a specific case you are taking from a teammate, or for a customer, then use the [CRMBot](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/297951/Tools?anchor=crm-bot) to assign the case to yourself by saying "Assign CaseNumber to me"

##Were You Assigned a Case or a Collaboration?

There are three ways you can check if you were assigned a case or a collaboration.
1. The assignment email will designate if you have been assigned a case or a collaboration, the email title will either say: "Case Assignment" or "Collaboration Assignment" right in the title.

2. You can check the case itself! Open the case in Service Desk and check the case owner. If it is you, then it was a case assignment!
![image.png](/.attachments/image-9d5107b6-824f-441d-900c-3c807f46aa23.png)
If it was not you, scroll down to the 'Tasks' tile, make sure 'Collaboration' tab is selected, and check collaboration owner:
![image.png](/.attachments/image-2ad81f6c-e4f7-463d-beb0-6fe6f4072f3e.png)

3. You can Check the 'My Cases and Tasks' tile in Service Desk
Your list of cases has a column called 'Type' that will tell you if an assignment is a case or a Collaboration
![image.png](/.attachments/image-ca7ae09f-60dd-4dd5-985d-d8747afcfbbf.png)

##Check SLA

There are two ways to check current SLA (time until we have agreed to contact the customer).
1. In the case! Open the case in Service desk, and in the Details there is an SLA box, which shows the current time until SLA.
![image.png](/.attachments/image-bc70d328-a247-4a1d-b365-c7bed004bc5c.png)

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
![image.png](/.attachments/image-384ef9ee-a72b-4f34-8bdd-095574b70a55.png)

5. If you have provided any information or suggestions that you believe could resolve the case, change the case status to 'Waiting for Confirmation' and leave it there for the duration of the case. 

6. Even if a customer lists 'Phone' as their preferred communication method, send an email before you call them so they have your contact information, and mention you will reach out to them shortly be phone.

**7. Don't forget to click "Save" and/or to use the 'End' button rather than clicking directly out of the tab on a case. Just to make sure everything gets saved on the backend.**

Troubleshooting

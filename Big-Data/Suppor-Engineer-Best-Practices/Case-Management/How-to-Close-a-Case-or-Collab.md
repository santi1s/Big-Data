**This is the current process for our Service Desk tool, and covers only the basics for closing a Case or Collaboration.**

[[_TOC_]]
#Case Closure

##Confirm Case Closure With Your Customer
For any case, you need to confirm closure with your customer either verbally in a call, or in writing in a chat or email before proceeding with closure. This will ensure your customer is satisfied and has everything they need before you move forward with closing out the case.

###Non-Idle Case
Confirm closure with your customer either verbally or in an email by asking if they need any further information or support from Microsoft for their case, in an example like this:

```
Is there any further information you need, 
or any further support we can provide you for this issue 
before we proceed with case closure?
```
This moves your case forward, but also provides your customer with the ability to ask for what they need while assuring them we will continue to support them should they need it!

###Idle Case
For an Idle case, first follow our Idle Case guidelines [here](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/289639/Idle-Customers) by implementing the three-strike rule.

##Last Quality Response  
Last Quality Response is your last communication with the customer, and your last opportunity to leave a lasting impression. It is also used to provide a brief summary of the issue and resolution so your customer can provide this communication to their team, or use the summary in the future to resolve a similar issue.

**LQR Should Include:**
- Customer's Name
- Thank them for using Microsoft Products and reaching out to Microsoft Support
- Description of the problem
- Resolution and recap of process, if it was a long running case
- You and your managers contact information (which may already be in your signature)
- Inform them that it is possible they will receive a survey about their support experience and appreciation of any feedback
- Invitation to reopen if issue reoccurs or not resolved

LQR Should Avoid:
Contacting and closing cases on holidays, weekends and after working hours.

**Dissatisfied Customer:**
If you think that customer may be dissatisfied for any reason, then:

1 - Discuss as soon as possible this case with a Senior Engineer or Technical Advisor. Do not delay asking for help if the customer is dissatisfied.
2 - Contact TAM (for Premier cases)
3 - Consider reaching out to your manager to have your manager perform a 'Recovery Call', which is where your manager would reach out to the customer to discuss the case and how it was handled.

###Last Quality Response Templates and Training
Templates for last quality response and more training information, are available here: [Last Quality Response](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/292872/Last-Quality-Response)

##Steps for Case Closure in Service Desk
After you have confirmed closure with your customer and sent the last quality response to your customer, follow the steps below to close out your case.

1. If your case is a Severity A case, reduce severity to B and then save before proceeding with case closure.
2. Change case state to 'Closed' and Status to the appropriate status for the case. Most usually status will be 'Resolved', but there are some exceptions.
3. Add notes to Cause, Resolution, and Symptom sections under the 'Details' tile. These notes are very important! Please refer to the [below section](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSuppor%20Engineer%20Best%20Practices%2FCase%20Management%2FHow%20to%20Close%20a%20Case%20or%20Collab&pageId=289634&anchor=case-closure-notes) for information on how to appropriately fill them out.
![image.png](/.attachments/image-a8281a0f-f892-4a16-b3ed-8953ed5338cb.png)

4. Add 'Agent Identified Root Cause'
![image.png](/.attachments/image-2b7e9233-e796-4d28-b371-8db4b8e6bdd4.png)
You will need to select the most specific root cause possible, which is to say you cannot choose a root cause with subtopic underneath. You will need to choose one of the subtopics.
The product team uses this 'Root Cause' data to understand what kinds of cases they see most frequently for their product.  For more details please review [Root Cause](/Big-Data/Suppor-Engineer-Best-Practices/Case-Management/Root-Cause-|-RCA-Case-Management-Closure)

5. Enter Labor time for case closure process/any outstanding labor not yet entered for the case.
6. Select 'End' which will save and close out the case.
![image.png](/.attachments/image-bec87edc-28d3-4f1f-bfd6-e4fe8452c731.png)

### Case Closure Notes
The notes under the 'Details' section are very important! 
These notes are a quick-reference for anyone looking at the case to understand what the issue was, why it occurred, and how to resolve it. Product teams also use these notes as a reference for the case to be able to diagnose what kinds of issues their customers are regularly seeing.
These notes should prevent anyone from needing to dig through the case notes or case emails to understand what the issue was and how it was resolved.

1. Under 'Symptoms' add a clear, concise summary of the issue the customer was trying to resolve. Sometimes the customer's original case description does cover the whole issue, but more usually a better summary will need to come from your own notes. Include this information:
- Symptom/Issue the customer is experiencing, including any error message.
- Where they saw this symptom/issue (portal, script, application...)
- Impact this symptom has on their environment.

2. Under 'Resolution' provide full information on any fix or resolution provided. Include any steps taken by the customer or by Microsoft to resolve the issue.
If the issue was resolved by the product team, or if the issue was caused by an outage/Azure issue, include the ICM link as well as a brief description of the resolution.
If any workarounds were implemented before a full fix was discovered or deployed, please include the  workaround as well.

3. Under 'Cause' provide a concise description of what caused the issue, be that customer mistakes, lack of documentation, or an Azure problem. 
Include a description of any setting, script, or mistake that caused the issue.
Reference any documentation that also points to root cause, if applicable.


Again, anybody reviewing your case after it is closed should be able to look at these three boxes to understand the full issue, cause, and mitigation without looking into your case notes or email communications. 

#Collaboration Closure
##Confirm Collaboration Closure with Case Owner

Before closing out your collaboration, reach out to your case owner over Teams, email, or in person to confirm that they don't need any further information from your collaboration!

This ensures everyone is on the same page and that the case will continue to be fully supported.

##Last Notes
Much like last quality response, you should provide final notes in a case as you close out your collaboration.

Your notes should include:
- Original Reason for Collaboration
- Summary of Findings/Results from Collaboration
- Resolution Steps for Collaboration (if needed)

##Steps for Case Closure in Service Desk
1. Open the case and select "Edit" 
![image.png](/.attachments/image-deedf023-f576-4870-a257-8c565f4f20cd.png)
2. Navigate to your collaboration under the 'Tasks' tile
3. Choose the ellipsis button next to the collaboration and then select "Complete"
![image.png](/.attachments/image-1880766c-fa01-4453-9eec-20a15fb41771.png)
4. Choose 'End' to close the Service Desk Tab
![image.png](/.attachments/image-1f790a01-0ecb-43b0-8a37-f679e8101946.png)
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
3. Add notes to Cause, Resolution, and Symptom sections under the 'Details' tile.
![image.png](/.attachments/image-a8281a0f-f892-4a16-b3ed-8953ed5338cb.png)
These notes are a quick-reference for anyone looking at the case to understand what the issue was, why it occurred, and how to resolve it. 
Anybody looking at this case should be able to look at the symptoms to see if it matches their own issue, and if it does they should be able to find the cause of the issue and know how to resolve it from these notes, without having to look at your full case notes or email.
Under 'Resolution', also provide any workarounds that helped to mitigate the issue while the root cause was addressed/researched.
4. Add 'Agent Identified Root Cause'
![image.png](/.attachments/image-2b7e9233-e796-4d28-b371-8db4b8e6bdd4.png)
You will need to select the most specific root cause possible, which is to say you cannot choose a root cause with subtopic underneath. You will need to choose one of the subtopics.
The product team uses this 'Root Cause' data to understand what kinds of cases they see most frequently for their product.
5. Enter Labor time for case closure process/any outstanding labor not yet entered for the case.
6. Select 'End' which will save and close out the case.
![image.png](/.attachments/image-bec87edc-28d3-4f1f-bfd6-e4fe8452c731.png)

#Collaboration Closure
##Confirm Collaboration Closure with Case Owner

##Last Notes

##Steps for Case Closure in Service Desk
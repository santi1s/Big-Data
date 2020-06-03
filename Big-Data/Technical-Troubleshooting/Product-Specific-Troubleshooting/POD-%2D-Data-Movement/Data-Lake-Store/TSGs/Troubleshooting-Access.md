
[[_TOC_]]

# Base Knowledge

For almost all permissions cases, having a strong understanding of how permissions in ADLS Gen 1 work will help guide you on what settings to check, and how to achieve the functionality the customer needs.

Please be very familiar with our [Access Control Overview Guide](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280882/Access-Control-Overview)

# Troubleshooting Permissions Flow

**WIP**

<center>

**This Chart Is a Work In Progress**

::: mermaid
graph TD
A(Seeing the error <br> in the portal<br> or through a script?) -->|Portal| C(Does the user/group have <br> at least Read Execute <br> permission the full path?)
C -->|Yes| G(Is the ADL firewall blocking the user?)
G -->|No| D(Does the mask have <br> at least Read Execute<br> permission on the full path?)
D -->|Yes| E(Is the user/group correctly <br> added as a user/group?)
E -->|Yes| F(Do Jarvis logs show <br> the same user failing <br> as you have been adding <br> permissions for?)

A -->|Script| H(What is the user trying to do?)

H -->|Create file/folder| I(Does the group/user <br> have at least Write Execute <br> permission on <br> parent folder?)
H -->|Write to file/folder| M(Does the group/user <br> have at least Write Execute <br> permission on <br> the file/folder?)
H -->|Read from file/folder| K(Does the group/user <br> have at least Read <br> permission on <br> the file and/or Read Execute on folder?)
H -->|Delete file/folder| I

I -->|Yes| J(Does the group/user <br> have at least Execute permission <br> on the root and <br> all folders leading to parent?)

I -->|Yes| N(Does the Mask <br> have at least Write Execute <br> permission on <br> parent folder?)
M -->|Yes| O(Does the Mask <br> have at least Write Execute <br> permission on <br> the file/folder?)
K -->|Yes| P(Does the Mask <br> have at least Read <br> permission on <br> the file and/or Read Execute on folder?)

N--> |Yes| E
O --> |Yes| E
P --> |Yes| E

C -->|No| Z
G -->|Yes| Z
D -->|No| Z
E -->|No| Z
F -->|Yes| Y
F -->|No| Z
I -->|No| Z
J --> |No| Z
M --> |No| Z
K --> |No| Z
N--> |No| Z
O --> |No| Z
P --> |No| Z


Y(Fully Document and Create ICM)
Z(Add permission and re-test.)

Z -->|We did, and it worked for a little while <br> but then it failed again?| AA(Does this file/folder get deleted/recreated/overwritten?) 

AA -->|Yes| BB(Add needed permissions as 'default' <br> permission on parent folder)
AA -->|No| CC(Are other permissions operations <br> happening that could be overwriting <br> permissions?)
CC -->|No| DD(Double-Confirm with Jarvis.)
DD --> Y

:::

**This Chart Is a Work In Progress**

</center>


# First Contact on a Permissions Case

Often, with a strong understanding of permissions, based on the customer description you will have some idea of good first steps for the customer to try/check to resolve a permissions issue in their ADLS environment.

1. If you have some idea of what might resolve the issue, send along that suggestion as well as supporting documentation in the first email, and mark your case as 'Solution Delivered'.
2. If the first email does not resolve the issue, or if the original case description is unclear, follow up with any queries for further information you might need to diagnose the issue,  and go ahead and request a time to set up a screen sharing session to go over the issue together.

```
Note: Permissions issues are MUCH easier to solve in a screen share than they are over email.
```

#First Questions to Ask

Whether on a call, or in an email, the below questions will help you pinpoint many permissions issues your customers are seeing.

```
Note: Please don't just copy and paste the full list of 7 questions and send them to your customers.
While many cases will be resolved by walking through these questions,
not all of them are necessary to diagnose an issue, and this is meant to help guide the support engineer
through the thought process.
```

1. What is the error message, and what are they doing when they see it?
2. If no error message, what is the behavior they are seeing, and what is the behavior they expect to see?
3. What action does the user need to be able to perform?
4. What are the permissions on the file/folder in question?
5. What are the permissions on the parent folder structure? (Do they have at least –X?)
6. What is the mask setting for the file/folder in question?
7. What is the mask setting on the parent folder structure?

_Again **please do not** simply copy and paste the above questions and send them to your customers. These questions are to help you think through the issue, and often the customer has answered the first few questions in their case description._

#Next Steps
If you have been through the above questions, but everything seems to be in order and you are still unable to resolve the issue, consider these next steps.

## Troubleshoot Expected Outcomes
Sometimes, a customer is performing an series of steps, and you expect to have one outcome, but see another, and there isn't necessarily an error message. What else can you look into?

1. What steps is your customer performing, and are they the right steps to achieve the end results they need?
2. A user is running a script or performing an action and getting an error, but they appear to have all the permissions they need, and you have checked the mask. Can we confirm that the user they have given permissions to is the user actually running the script or performing the action? Check any groups they may be a part of, and also run a Jarvis query for the action they are taking to see if the user they expect did indeed make the request.
3. If they are not seeing an error, but the behavior is not what they expect, confirm what behavior is actually happening.
**For Example, from a real customer case:**
_Customer was using 'Add Permissions' in the 'Access' blade to add permissions for a certain service principal on all the files under a folder. However, only some of the files were being granted permissions. The 'Add' command showed no failures on any of the files, so there was no permissions problem and we weren't hitting the ACL limit.
We noticed that the 'Add Permissions' after it ran said that it had applied permissions to 10001 files.
Using PowerShell, we ran: (Get-AzDataLakeStoreChildItem -AccountName <account name> -Path <folderpath>).count
This returned a value of 27856 files under the folder where we were applying permissions.
Add permissions was only adding permissions for 10000 files, when over 27000 existed!
Using 'Get-AzDataLakeStoreChildItem' we printed a file that had the creation dates of all files in the folder, and noted that none of them were created during or before the 'Add' command. This meant there was an issue with the command. Opened an ICM to resolve the issue and suggested another method for adding permissions in the meantime._

## Using Jarvis to Troubleshoot Permissions

For a full guide on Jarvis basics for ALDS, please refer to our [Jarvis Guide](/Big-Data/Technical-Troubleshooting/Azure-Outages-&-Service-Impacting-Events/POD-%2D-Data-Movement/Data-Lake-Store/Jarvis-for-ADLS-Gen-1)

For a quick-reference on using Jarvis for ADLS, refer to our quick-reference: [Quick Reference](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1?anchor=quick-reference-for-getting-started-with-jarvis-for-adls)

When a certain action is failing for a customer, gather this information:
1. Timestamp
2. Path
3. Action
4. User

With this information, you will be able to search Jarvis and find the specific action they are taking as well as the error message. If you only have some subset of this information, you can use what information you do have to discover the rest of the information.

### Troubleshoot Error Messages with Jarvis
For a guide on Jarvis basics for ALDS, please refer to our [Jarvis Guide](/Big-Data/Technical-Troubleshooting/Azure-Outages-&-Service-Impacting-Events/POD-%2D-Data-Movement/Data-Lake-Store/Jarvis-for-ADLS-Gen-1)

For a quick-reference on using Jarvis for ADLS, refer to our quick-reference: [Quick Reference](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1?anchor=quick-reference-for-getting-started-with-jarvis-for-adls)

Many Error messages in ADLS end with a timestamp and an Activity ID! You can use both this timestamp and this activity ID to look up the specific failing request in Jarvis and find out more information about it.

Follow the quick reference to set up your query, then set the filtering conditions to search the Activity ID column for your particular Activity ID.

If you are unable to find it, broaden your timestamp search window.

### Look up User Activity in Jarvis
To confirm if the user is able to successfully access other parts of the data lake, or if they are seeing an issue accessing everything, you can search for activity based on that username and see if there are any successful calls coming from that user.

Follow the quick reference guide to get started with Jarvis, and set the filtering condition to look for your user name.

For a guide on Jarvis basics for ALDS, please refer to our [Jarvis Guide](/Big-Data/Technical-Troubleshooting/Azure-Outages-&-Service-Impacting-Events/POD-%2D-Data-Movement/Data-Lake-Store/Jarvis-for-ADLS-Gen-1)

For a quick-reference on using Jarvis for ADLS, refer to our quick-reference: [Quick Reference](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1?anchor=quick-reference-for-getting-started-with-jarvis-for-adls)

## Opening an ICM for Permissions
For more information about opening ICMs for ADLS in general please refer to: [ICMs for ADLS Gen 1](/Big-Data/Technical-Troubleshooting/Azure-Outages-&-Service-Impacting-Events/POD-%2D-Data-Movement/Data-Lake-Store/ICMs-for-ADLS-Gen-1)


Many ADLS permissions cases can be resolved WITHOUT the assistance of the product team, as most of them are user error/misunderstanding. However, if after searching all logs, checking permissions settings, and checking expected behavior expectations you have found an issue or unable to explain the behavior, create an ICM.

1. Include full issue description including the error/issue the customer is seeing, the action they are attempting to take, and the behavior they expect to see.
2. Include all relevant Jarvis logs. Narrow query results to show only relevant logs and/or provide the timestamp/activity ID specific to your issue.
3. Include any relevant network traces, PowerShell queries and results, or any screenshots relevant to demonstrating the issue.

The more relevant information you can provide to pinpoint the issue, the more quickly and accurately the PG can respond to your request.
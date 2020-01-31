--WIP--

[[_TOC_]]

# Base Knowledge

For almost all permissions cases, having a strong understanding of how permissions in ADLS Gen 1 work will help guide you on what settings to check, and how to achieve the functionality the customer needs.

Please be very familiar with our [Access Control Overview Guide](/Data-Movement-POD/Data-Lake-Store/Access-Control-Overview)

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

## Opening an ICM for Permissions

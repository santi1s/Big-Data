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

Once you have a good base knowledge of permissions, the below questions will help you pinpoint any permissions issues your customers are seeing.

```
Note: Please don't just copy and paste the full list of 7 questions and send them to your customers.
While many cases are permissions cases, and while many of them will be resolved by answering these questions,
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

# Using Jarvis to Troubleshoot Permissions

# Opening an ICM for Permissions

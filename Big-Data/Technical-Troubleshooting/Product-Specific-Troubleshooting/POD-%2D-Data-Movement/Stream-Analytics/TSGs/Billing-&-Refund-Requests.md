# Prerequisites
1. All the refund request to start with Billing and Subscription Team. 
1. We own a task on the case. 

After the above 2 conditions are satisfied , we proceed to the next steps:  


Questions 

- What time range did the customer experience increased cost?
- Did the customer alter there SU during this period (verify against logs)?
  - Yes - Customer is not eligible for a refund.
  - No - Continue to next step.
- Is Customer Enterprise or Pro Direct?
  - Yes - Contact Azure Billing and Subscription team to determine if customer's agreement has recently changed.
  - No  - Gather time range and charged amount with product group via the Escalation teams channel to determine if there has been an error.

# Create a Request

Support Engineer needs to confirm the following information when creating a request for a refund, since Product Group must attach this confirmation to their documentation. This documentation is important if an audit is to take place in the future. 

**STEP 1: GET APPROVAL FROM TECHNOLOGY**
The customer issue should have an ASA Team IcM associated with it.  In the IcM, please have the Product Group in the IcM approve the refund.

**STEP 2: GATHER INFOMRATION FOR Azure Billing/Subscription Management Support**

Please answer the following questions as completely and in as much detail as possible, even if it is possible that the questions have already been answered in the ticket. It is important for us to receive your analysis via email and to be able to attach it to Billing/Subscription ticket when they order the refund request. 


-	Which Subscription GUIDs were impacted?

-	Why did the issue happen? Please include the ASA IcM, the RCA, and other technical details.

-	Do we have objective evidence that this issue is Microsofts fault?

-	What was the impact to the customer, and how did it specifically affect them? Please provide me a high-level explanation of the impact.  Was the job blocked without a workaround?

-	What is the exact timeframe of the issue? Can we confirm the impacted timeframe up to the minute? 

-	Do we have evidence for the impacted timeframe e.g. is this confirmed via the IcM/RCA? Can we provide logs or ticket start time and a deployment date of a bug fix?

-	What services were impacted? Please provide us a list of all impacted resources.  If you are including input and output in addition to ASA, then please the resource name of each resource impacted.

**STEP 3: OPEN COLLABORATION WITH BILLING TEAM**
In the collaboration, please copy and paste the details from Step 2.


 
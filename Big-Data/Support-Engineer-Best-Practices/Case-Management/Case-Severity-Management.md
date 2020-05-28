
[[_TOC_]]

##Goal
A good classification and management of severity is crucial and beneficial to all parties - Customer, CSS, CSM, TAM and PG. We need to work together and try our best to adhere to an aligned protocol to reduce the number of 'fake' severity A cases, so we can put our efforts on the real severity A cases to resolve customer's urgent issues. 

---
##What is the Severity A?
From document [Support scope and responsiveness](https://azure.microsoft.com/en-us/support/plans/response/):
Sev A is used for situation that customer’s business has significant loss or degradation of services, and requires immediate attention.
It can be divided to **three parts** overall:  
1. Function of product aspect: Customer's core or production environment has been affected severely and can't function properly anymore.
2. Financial aspect: Causing customer financial loss.  
3. User aspect: affecting quite a lot of end users.

---
**Concrete examples of Severity A for Big Data products:** 
- HDInsight/Databricks production cluster is suddenly down and can't be accessible; Analytical jobs on HDInsight/Databricks cluster can't run anymore due to server side issue; 
- Can't access Production Cosmos DB database/Azure Data Lake Storage Gen1, or can't read/write data in them; 
- Suddenly fail to run the ADF daily production pipeline somehow;
- Data Explorer/Stream Analytics production cluster can't process data, etc.
The most importantly, it has <u>**no**</u> any workaround <u>for above scenarios</u> and customer is <u>being blocked on production</u> system.
---

##Expected customer's response for Severity A:
From document [Support scope and responsiveness](https://azure.microsoft.com/en-us/support/plans/response/):
Customer **confirms** that the issue has **critical business impact**, with severe loss and degradation of services.
Customer **needs to commit to continuous, 24x7 operation, every day** with the Microsoft team until resolution, **otherwise**, Microsoft may at its discretion decrease the Severity to level B.

From the 3rd footnote in the [document](https://azure.microsoft.com/en-us/support/plans/response/):
Microsoft may downgrade the severity level if the customer is not able to provide adequate resources or responses to enable Microsoft to continue with problem resolution efforts.

---
##When to downgrade the severity from A to B,or uncheck 24x7?
Given the above definition of severity A, we can summarize that a qualified Severity A case means 1. There is some ongoing critical issues for customer's  production system **AND** 2. Customer is reachable and online for 24x7.

So when you find for one of below cases:
1). **Not qualified as the urgency or business impact of Severity A:** Using your technical sense, you judge the issue is not that urgent actually. If you are not clear from the case verbatim, you can ask customer or CSM what is the business impact for them. 
	E.g. Customer is doing a testing in the QAS environment instead of production one; customer is asking some how-to questions; That has never worked before and customer is doing the first time deployment/configuration; Customer is creating severity A for whatever issue and only wants to get faster response.

2). **Customer is not available 24x7:** Customer is not reachable for quite some period of time / for multiple times. (Very likely for night in customer's TZ). Or, customer explicitly mentions he/she will go to sleep and not online 7*24. 
	
**Note:** Please do **NOT** just check customer is active in your own region, especially when you are in a closer time zone with customer, but please double check if they **will really be** <u>available 24x7</u>, **after their business hours** (in your next shift).

i.e. We can see some engineers just see 24x7 flag, then he/she doesn’t ask or confirm with customer, and **assume** customer is available 24x7 so transfer the case to the next region. 
Then engineers of the next regions can't reach out to customers as who have been out of working hours or gone for rest already. (But one resource has been already occupied for this. Further follow-up and hand-over across region takes unnecessary time)
Part of customers <u>might have misunderstanding</u> of severity A or 24x7 support - they think it **ONLY** requires Microsoft 24x7, so their issue can be looked into 24x7 continuously, which is leading that they will intend to flag 24x7 on or keep the severity as A, since they want to speed up the handling process.

3). Customer or TAM in any way **agrees** it can downgrade the severity.
	
4). You **have provided a solution or workaround** to unblock customer.


**The action should be following below rules:**
**Rule 1:**
IF (1 == true | 2 == true | 3 == true | 4 == true), downgrade the severity to B. 
**Rule 2:**
IF [(1 == true | 3 == true | 4 == true) **&** (2 == true)], downgrade severity to B and uncheck 7*24. And if customer is not in your region, [transfer to local region](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/306262/Case-Handoff-Process?anchor=process-for-non-24*7) to follow up if needed.
**Rule 3:**
IF (1 == false & 2 == false & 3 == false & 4 == false), please keep the severity as A, then [transfer to the next region.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/306262/Case-Handoff-Process?anchor=process-for-critical-%2F-24*7-cases)
<span style="color:#DF0101;">**Exception:** </span> Political/special reason stated by customer or TAM to keep the case as Severity A. 

---
**Additional Info:**
When you judge IF (1 == true | 2 == true) , we are **NOT asking** that, once you find the issue is not that qualified as severity A or find customer is not responding your very first email, then you can go ahead to directly downgrade the severity or uncheck 7*24 in a seemingly 'rude' manner.

Instead, you need to do it **in a flexible and professional way**:
Like, **when it comes to 1),** you need to use good communication skill to help customer understand what severity A really means, and show empathy that you understand the issue is critical, so you will try your best to troubleshoot it during business hour under Sev B though. And handing over 7*24 is not always beneficial to them - hand over may cause unnecessary overhead and gap in communication even it's minor. 
And **an important talking point** with customers is that they can raise the severity back to A when they encounter any emergency at any time, let them aware that downgrading to B never means we will relax and don't care about their issue. 
Anyway, the goal here is that you should try to change situation 1) to situation 3).

**When it comes to 2),** you need to at least <u>try several ways or do several strikes</u> to confirm customer is really not there before you downgrade the severity. Be careful and think twice if you really need to call customer at their night especially you are not in the same region, as nobody wants to be waken up at night.

As always, if you have anything unclear or doubt, please contact your TA or Handoff SME in your region.

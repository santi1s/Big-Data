[[_TOC_]]

# When to Open an ICM for ADLS Gen 1
1. Have you checked the logs and documentation to confirm expected behavior?
2. Have you checked Data Lake TSGs to see if your issue is covered by any pre-existing TSGs?
3. Have you checked if there is any Azure Outage?
4. Have you searched ICMs for the affected time, to see if there was any ongoing issue?
5. Have you followed up on the ADLS Teams Channel?
6. Have you attended the daily ADLS/ADLA call and/or is the daily call outside of a reasonable time for case resolution? 

If the answer to all these questions is 'yes' and you still need assistance, open an ICM!

# How to Open an ICM to ADLS

Use the ICM page, which the ADLS team has created nice templates for adding information based on issue type.

1. Go to: icm.ad.msft.net
2. Click 'Incidents' and then 'Create'
![image.png](/.attachments/image-34ac4e05-3323-441a-995a-aba216112883.png)
3. Choose 'I'll search for the team to own this incident' then search "Azure Data Lake Store" and choose the 'Store' Team
![image.png](/.attachments/image-622c19f5-4629-49ed-a992-17764e356fe1.png)


3. Set your title using this format: [Case Number][Severity][Premier/Pro/ARR]Short, Descriptive Title

## What Information to Add to ICM

An ICM should cover only one error or issue. If your case has multiple errors or issues that need to be addressed, open multiple ICMs.

### Critical Information
1. The ADLS Account Name
2. The specific error message or issue being experienced by the customer.
3. Timestamp or timeframe that the error or issue was experienced.
4. Link to a Jarvis Query that provides the specific requests that experienced the issue/error.
5. If your Jarvis link contains many requests, either narrow the scope to show only the affected requests, or provide a Specific Activity ID from Jarvis Query that points out a single request.

### Helpful Information
1. The ADLS Account Region
2. A Screenshot of the error
3. Logs from the client side with detailed error information.
4. If relevant, a link to a potentially related ICM.


### Information to Leave Out
1. Identifying information like first and last names of any customers. Including screenshots! If screenshots include last names, or other information that would allow you to identify a person outside of a case, black out that information using an editor.

2. Information about other issues or errors -- unless they are relevant. Again, only one issue should be handled per ICM.

# How to Follow Up with an ICM

# What you can Share with Your Customer

#Quick Reference

<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#bfbfbf;background-color:#f4f4f4;border-width:3pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

<b> Author: </b> whhender
<b> Date of Last Update: </b> 04/28/2020
</td>
</tr>
</table>
Determine if the issue is in the SCC or Babylon Space

**Limitations of using this script**
- XML Policy will contain company private information.  Need permission to share that info to the ticket or PG. 
- Does not provide scoping information. 
- User needs to have access to some labels. 
- Labels will be user specific
- Not compatible with multifactor authentication  

**Requirements**
- Python 3.0 
- Pip install Urllib3 
- scc_pinger.py script

**Options when Running Script**
- username //required will return labels relative to that user 
- password //required 
- maxFailures //before script will stop 
- delay //between execution 
- useFiddlerProxy //Can also start fiddler  
- email… 

**Running the script**

**Example Problem question 1**: Is scc working? (regional failure may cause scc to be down, or tenant specific issues or policy) 

RUN SCRIPT FROM SHELL COMMAND LINE
>python scc_pinger.py –username customer@company.com –password xxxxxx 

Expected Results: 

Successfully getting xml policy from scc.  Connect to global endpoint then redirect to internal regional (will have regional prefix) point for policy xml 

Unsuccessful results are usually connectivity problems.  Connectivity problems discuss with SCC. 

**Example Problem question 2**: What are the stats? (failure count, response time, failure rate)

RUN SCRIPT FROM SHELL COMMAND LINE 
>python scc_pinger.py –username customer@company.com –password xxxxxx –iterations 

**Example 3** to Get script policy xml (also requires fiddler) 

RUN SCRIPT FROM SHELL COMMAND LINE
>python scc_pinger.py –username customer@company.com –password xxxxxx -useFiddlerProxy 

Unsuccessful results: May have invalid policy credentials and need to discuss with SCC 

 

**XML POLICY POWERSHELL SCRIPT**

If SCC may not be working due to tenant specific issues or policy. This script will retrieve the XML Policy. With this process it will allow the Babylon CSS team to identify if the support ticket should be moved to SCC CSS team for investigation (in case policy is not retrieved correctly) or it should be managed by the Babylon CSS team.

- Customer will have the ability to check if SCC policy is being pulled correctly by running the attached PS script (change the script suffix before using)
- This PS script will return the match policy in the context of the user that is running this command
- This script will be a good start to check SCC responsiveness (there is a small chance that this script will work but Babylon will still have issues to retrieve the policy – we will monitor such behavior with CSS)
- The customer that is running this script should be able to see all scoped and un-scoped labels - @Ajay Karanam to confirm this behavior
- With the new SCC UX change, customers will have the ability to scope labels just for Babylon (which will make it unapplicable for Office apps labeling) - @Ajay Karanam to confirm if the new script will also return the labels targeted only for Babylon
Running the Script

You can share the GetPolicy.ps1 from Ran’s email (attached email 2) with customer and have them run it to verify if a policy is being retrieved from SCC.

STEPS

- Login with admin privileges

- Windows compatible

- Use any account: Uses msal.ps package (supports MFA) – script will request if not installed

- Run from Powershell Prompt
  >GetPolicy.ps1

- Review results of the script run will returns the Policy XML


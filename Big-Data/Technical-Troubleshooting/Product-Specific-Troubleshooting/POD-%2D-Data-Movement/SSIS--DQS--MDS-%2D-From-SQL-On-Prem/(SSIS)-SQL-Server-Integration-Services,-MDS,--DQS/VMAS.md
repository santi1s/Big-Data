#VMAS Guidance 
- [VMAS Teams Channel](https://teams.microsoft.com/l/team/19%3aafb9ad2caed345d1ad1f5840cebf30d7%40thread.skype/conversations?groupId=6c735961-0467-4bf0-ba51-4244910b8ed8&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)  
- [VMAS Video Tutorial](https://msit.microsoftstream.com/video/3dd4a3ff-0400-9fb2-db3d-f1eb083ca537) 
- Other VMAS Questions kuttka@microsoft.com 
 

#Get VMAS Access 
**How can I request access?** 
1. Access when connected to MSVPN
2. Go to https://idweb/identitymanagement/default.aspx
3. Choose the right SG (depend on your Region choose nearest location) 

|**IdwebSecurity Group**|**Regional Users**|**Recommended Azure deployment DCs**|**Recommended VMAS Dashboard**|
|--|--|--|--|
|CSS_EMEAEAST_Internal_Azure|CzechRepublic,  Egypt, Hungary,  Israel, Italy,  Jordan,  Kuwait, Poland,  Romania,  Russia, Sweden, Turkey,  UAE|WestEurope|https://rovdivmas|
|CSS_EMEAWEST_Internal_Azure|France,  Portugal,  UK, Denmark, Ireland, Norway, Netherlands,  SouthAfrica,  Spain|WestEurope|https://mucvdi|
|CSS_HYDmobile_Internal_Azure|Sonata Hyderabad - India MobileusersOnly|WestIndia|https://blrvdivmas|
|CSS_India_Internal_Azure|Bangalore IGTSCusers|WestIndia|https://blrvdivmas|
|CSS_Indiamobile_Internal_Azure|Other Remote - India Mobile Users|WestIndia|https://blrvdivmas|
|CSS_JPOTHERS_Internal_Azure|Japan,  Korea,  New Zeeland,  Australia,  Taiwan,  Singapore|JapanEast|https://shgbsvmas|
|CSS_LATAM_Internal_Azure|Argentina,  Colombia,  Brazil,  Costa Rica,  Mexico|WestUS|https://wagbsvmas|
|CSS_NAEAST_Internal_Azure|NC,  Fargo andsmallercities|EastUS|https://wagbsvmas|
|CSS_Nawest_Internal_Azure|Washington State,  StateofTexas andsmallercities|NorthCentralUS|https://wagbsvmas|
|CSS_OthersMobile_Internal_Azure|OtherRemoteusersworldwide: like TEK_EXPERTS|Nearestlocation|Nearestlocation|

4. Add your alias to "Members to Add" section: 

5. Click Ok. 

#When can I access VMAS? 

- Admin team will review and approve or deny request. 

- Takes approximately 24 hours. 

- If approved allow for AD replication to occur (24 - 48 hours) 


#How to Deploy VMAS  
1)Access when connected to MSVPN
 
2) Navigate to VMAS website - https://wagbsvmas/ 
 
3) Choose a Template. Some examples provided below: 

   Super SQL St Alone 08 TO 17 AG1 (are on cluster & windows failover) 

   Super SQL St Alone 08 TO 17 Win 2012 ...

   Super SQL St Alone 12 TO 17 Win 2012 ...

   ...
 

4) Name the Work Space and include the SD ticket number  

  

5) Choose region to deploy...choose the region closest to you 

 

6) Can download an RDP file to be able to connect.  Workspace properties have connection details. 

 

7) Troubleshooting 

   - If there are any problems in making changes to template ask kuttka@microsoft.com 

   - Custom environment will need to install windows VM 3GB & then install SQL Server individually (SQL files found) computer->network->sqlbuilds->releases 

   - VM cannot run for longer than 8 hours or extend quota for a week. ask  kuttka@microsoft.com 

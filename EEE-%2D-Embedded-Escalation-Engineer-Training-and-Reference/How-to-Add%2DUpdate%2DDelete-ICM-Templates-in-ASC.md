# How to Add-Update-Delete ICM Templates in ASC

<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>
<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>


**Prerequisites**

- To use Jarvis operations, make sure you apply for [19401](https://myaccess/identityiq/accessRequest/accessRequest.jsf#/accessRequest/review?role=Azure+Diagnostic+Partner+-+19401&autoSubmit=true) project access. It might take up to 1 day for your request to get approved. Drop a mail to ASC team if your request doesn't get approved.
- Make sure to set the correct support topic mapping (L1\L2\L3) from [here](https://msaas.support.microsoft.com/sap/manage;sap=).
- Follow this [document](https://supportability.visualstudio.com/Big%20Data/_wiki/wikis/Big-Data.wiki/310960/How-to-create-an-ICM-Template) to create your IcM template.
- If you want to customize the IcM template fields, please contact your tenant admin and follow this [document](https://icmdocs.azurewebsites.net/administration/manageServices/customFields.html). If further customization is needed, please check with IcM team.

<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>
<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>

**Steps**

1. Go to Jarvis actions  https://jarvis-west.dc.ad.msft.net/actions and under **Get Started Now**, Select Environment as **Test** from the drop-down and click on **Go to Geneva Actions** button.
 
   ![getstartednow.png](/.attachments/getstartednow-2ec4113e-9f6a-40e6-a116-4e5e0d47a601.png)

2. You'll be prompted for authentication.

3. Enter Filter as **Escalation Operations** to browse operations under AzureDiagnosticService. Escalation Operations contains different operations to be performed for Icm templates. 

   ![escalationoperations.png](/.attachments/escalationoperations-74a65a75-46e4-4d72-8135-53586192e59d.png)

## We primarily use following operations to add/update/delete ICM templates in the ASC.

 <p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>

1. **Get document list –** Shows the list (DocumentNames) of the azure services who has ICM templates published into ASC. Each document contains a set of ICM templates related to that service. You can check the documents listed by providing the service name in DB Name field like Data Factory, HDInsight, Cosmos DB etc.
    ![getdocumentlist.png](/.attachments/getdocumentlist-780aad73-3a32-4166-a70c-d14f9cd24273.png)

<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>

2. **View template mappings -** Shows the list of the Icm templates under a service. You can search by the Document Name to view the templates. Usually, each template is mapped to L1/L2/L3 Support Topic.

    ![viewtemplatemappings.png](/.attachments/viewtemplatemappings-58aabaae-7b2e-4b3f-a174-3f84dcb729fa.png)

   **Note:** Kindly take a backup of this document before making any changes to the Icm templates.

<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>

3. **Delete template mappings** – This operation allows you to delete any existing template mapping with the Support Topic. 

    ![deletetemplatemappings.png](/.attachments/deletetemplatemappings-f940c4ba-7120-4fa2-90a0-732dac4331b4.png)

   - _Support Topic:-_ Can be L1/L2/L3 Support Topic. In the above screenshot, we have provided L1\L2 Support Topic (L1 -> Data Factory & L2 -> Git Repository and Version Control)
   - _Template Id:-_ ICM Template Id you want to delete the mapping. 

   Once the above fields have been filled click Run to delete the Icm template mapping.

<p style='margin:0in;margin-left:.375in;font-family:Calibri;font-size:12.0pt'>&nbsp;</p>

4. **Add template –** Allows you to add a new template mapping based on the Support Topic into ASC. You can add Icm template mappings based on L1/L2/L3 Support Topics. 

     ![addtemplatemappings.png](/.attachments/addtemplatemappings-133b6b30-e7f9-413c-9878-d04b3ecbb21e.png)

   - _Support Topic:-_ Can be L1/L2/L3 Support Topic. In the above screenshot, we have provided L1\L2 Support Topic (L1 -> Data Factory & L2 -> Pipeline Activities)
   - _Service Level:-_ Specifies the support case service level Pro, Premier etc. 
   - _Ticket Severity:-_ Specifies the case severity. You can have separate Icm templates based on severity of the case, or a common template irrespective of the case severity. If you want to have a common template, select All.
   -  _Template Id:-_ ICM Template Id you want to add a mapping. Refer to the following TSG for creating a template id: 

        **How to create an ICM Template**
        https://supportability.visualstudio.com/Big%20Data/_wiki/wikis/Big-Data.wiki/310960/How-to-create-an-ICM-Template

   - _Template Title & Template Description:-_ Add the Template Title & Description to be shown in ASC.
   - _Cloud Name:-_ Public, Fairfax or All. You can have separate template for different clouds or a common template for all the clouds. If you want to have a common template, select All.

Once the above fields have been filled click Run to add the Icm template mapping. The changes are mostly reflected instantly in ASC.

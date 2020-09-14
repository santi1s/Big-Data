<p style='margin-top:18pt;margin-bottom:7pt;line-height:29pt;font-family:&amp;quot;
font-size:24.0pt;color:#1C3A56'>Elixir End-to-End Insights process</p>

#<span style="color:blue">**Summary**</span>

ASC supports creation and deployment of Insight Diagnostics using a simplified experience via [Elixir](https://elixir.microsoft.com/solutions/insights?supportscope=d1e1cc31-42ce-53d2-f83d-18be2124f44f). Following a simple wizard you can create Kusto-based diagnostics to help customers and support engineers troubleshoot problems. NoCode insights through [Elixir](https://elixir.microsoft.com/solutions/insights?supportscope=d1e1cc31-42ce-53d2-f83d-18be2124f44f) enables you to create and publish Insigths in minutes thanks to reduced dev cost investment and self-serve deployment process.

In this wiki, we are going to share all the steps to help you implement an Insight in Elixir. After going through this document you will have a fairly good understanding of the end-to-end process to create a No Code Insight through Elixir.

In this wiki you will find:
1. [How to create an Insight in Elixir](#create-an-insight-in-elixir)
2. [EngSys-ads-partner (KQL files PR)](#pros-and-cons-compared-to-elixir)
3. [Customer Ready Content (CRC)]()
4. [SEAM mapping process]()
5. [Reference to Notification Insight official documentation](#references) 

#Create an Insight in Elixir:
1. Go to https://elixir.microsoft.com/home click in "**+ Add Insights**" and select Cosmos DB as support product.
![Elixir Insights example.png](/.attachments/image-f9575370-5cdc-4d3f-945b-c459d48db748.png) 
1. Click in **Create** to create a new Insight and go through the following sections:
   - **Description:**
     - Make sure to use your team's name convention.
   - **Trigger:**
     - Select **Cosmos DB** as product the insight will be presented.
     - In the Resource Type select **MICROSOFT.DOCUMENTDB7DATABASEACCOUNTS**. 
     - Select the **support topics** which the Insight will be presented.
     - In Target clients select **Azure Portal** and **Azure Support Center**.
   - **Data sources:**
     - Select **CosmosDBNoCodeInsight** as the data source.
   - **Logic:**
        - Make sure to select all data classification that applies to your query results. 
        - Most of the times we will use variables in the Kusto Query, so you should select **System metadata**.
   - **Content:**
     - Ideally the **Recommended action**, **Description** and  **Customer ready content** should be created or reviewed by a PM.
     - **Recommended action** and **Description** is not customer facing, this is what CSS will see it in ASC
     - Only what we write in **Customer ready content article ID** is customer facing and it will show up in the Azure Portal. For more details, go through the CRC process below.
     - The **Links** allows us to provide some links in ASC, so it will also just be shown to CSS engineers.
1. Once you create the Insight it will show in **Most recent status** as **Updated in test** and you should click in **Test in ASC test env** to test if the insight is working fine in ASC. You must select a case with a **support topic** selected in the Trigger part before.
![insight is working fine in ASC](/.attachments/image-471e3657-252f-471b-9edd-02ad5de0c7ed.png)
1. If you cannot find a case, you can use **Edit & Run** to change the Support Topic.
![use Edit & Run to change the Support Topic image](/.attachments/image-123ad84c-ed58-4fa7-8730-5a1f6fc358d8.png)
1. To publish the Insight to PPE you must click in **Actions** and **Start validations**.
![Start validations image example](/.attachments/image-0fd04c7f-9ce1-4faa-9227-8f039a54da21.png)
1. Once you see the **Most recent status** as **Validation complete** you can push to Prod
![push to Prod example image](/.attachments/image-75e84b60-5ea0-4109-991d-1c182492bd5b.png)
1. When you do a **Push to Prod** it will automatically create a PR of this NoCode Insight. What you added previously will be converted into code.
![code example](/.attachments/image-ec257d81-9d8b-4e5e-866c-1b9ca5919455.png)
1. At this point, some engineers from Cosmos DB Supportability will get notified, review the PR and if everything is fine it will be sign-off and merge into the Master Branch.
1. As soon it merges into Master Branch, it will automatically start a Build and you will get an email saying if the Build was successful or not.
1. Once the Build is successful the NoCode Insight team will push it to Prod. This means that even if you merge this into Master Branch or if your Build succeeded, there is a manual step needed for another team. In order to know if this has started you should look at the column **Most recent status** which should show as **Deployment started**. 
1. The column **Most recent status** will show the value **Enabled in production** when everything is done from Elixir side.
 

# 2. EngSys-ads-partner (KQL files PR)


# 3. Customer Ready Content (CRC)


# 4. SEAM mapping process
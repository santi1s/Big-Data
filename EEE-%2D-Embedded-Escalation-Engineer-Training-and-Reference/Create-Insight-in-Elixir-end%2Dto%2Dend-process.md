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

![Elixir Insights example.png](/.attachments/image-f9575370-5cdc-4d3f-945b-c459d48db748.png) 
 


# 2. EngSys-ads-partner (KQL files PR)


# 3. Customer Ready Content (CRC)


# 4. SEAM mapping process
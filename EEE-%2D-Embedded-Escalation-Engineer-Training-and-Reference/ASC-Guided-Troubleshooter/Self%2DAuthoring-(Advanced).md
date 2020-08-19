
**Note:** You are an early adopter so the authoring experience requires learning new systems that you may not be familiar with and may take an initial time investment to learn. The authoring tools are primitive, but constantly improving. 

##Step 1 - Validate, prepare, and generate all your content
As mentioned, a troubleshooter consists of insights, customer ready messages, and content. So as a first step here, we need to generate these contents. 

First, you would need to create XLS and Visio mentioned earlier, and then create contents. You have 2 options to do this:

- ### Create contents using Powershell script
  -  Validate your workflow XLS file by reviewing the Visio output – make sure it looks like a nice tree and all steps are connected, all connectors have labels, etc.
  -  Validate the XLS – make sure every row has a Title and a customer ready message or content.
  - Download the [content generation script](https://microsoft.sharepoint.com/teams/ProjectCentennial/Shared%20Documents/Forms/AllItems.aspx?id=%2Fteams%2FProjectCentennial%2FShared%20Documents%2FTSGAuthor%2FTSGContent%2Etxt&parent=%2Fteams%2FProjectCentennial%2FShared%20Documents%2FTSGAuthor) – save it and rename it as a .ps1 file. 
  -  Edit the ps1 file and replace some basic parameters like Service and Resource.They should match the ARM resource type.
  - Convert your XLS file into a CSV.
  - Edit the ps1 file to point to your source .csv file.
  - Run the powershell script and it should generate all your content: insights, customer ready messages, and content in the appropriate format.

- ### Create contents manually
  This section consists of 2 parts:

  ###> TS content and solution steps (.md)
  -   Validate your workflow XLS file by reviewing the Visio output – make sure it looks like a nice tree and all steps are connected, all connectors have labels, etc.
  - Validate the XLS – make sure every row has a Title and a customer ready message or content
  - Create text file(s) in your TSG folder that will be presented in each one of the steps in the Troubleshooter. Note that you will need to save each content step in a separate file. Use name(s) that is short but also properly describes the steps. This will make it easier for you in the future when making edits. 

    You can use "content-<name>.md" for content steps, and "solution-<name>.md" for solution steps. Solution steps can be referenced in insights cards. 

     ![content files list.png](/.attachments/content%20files%20list-c5adddc6-a362-4f3f-ae9d-c9fa326771d4.png =350x)
    **Note:** Use markdown (.md) format.


  - Update the metadata properties at the top of the file(s):

    ``` 
    <properties
         pageTitle=""
         description=""
         service=""
         resource=""
         ms.author=""
         displayOrder=""
         selfHelpType="TSG_Content"
         supportTopicIds=""
         resourceTags=""
         productPesIds=""
         cloudEnvironments="public, fairfax, usnat, ussec"
         articleId=""
         ownershipId=""
     />
     ```

      |**Property** |**Required** |**Comments**|
      |--|--|--|
      |**pageTitle** |Yes|The title and main header of your document|
      |**description**|Yes|Include details about the downtime reason this insight should be used for|  
      |**service**| Yes | Your registered ARM provider namespace. For example: microsoft.compute|
      |**resource** |Yes |Your registered ARM resource type. For example: virtualmachines |
      |**authors** |Yes | Must match a GitHub username |
      |**supportTopicIds**|Yes | This can be left empty using “” |
      |**productPesIds**|Yes |This can be left empty using “” |
      |**displayOrder**|Yes|This can be left empty using “” |
      |**selfHelpType**|Yes|Must be set to generic or resource. [Learn about the benefits of each option](https://support-docs.azurewebsites.net/docs/articles/addeditdocuments/authoringGuide/metadata.html)|
      |**resourceTags**|Yes |This can be left empty using “” |
      |**articleId**|Yes |Use [Online GUID generator](https://www.guidgenerator.com/) to create an article ID |
      |**cloudEnvironments**|Yes | Please use: public |

   - Update the content(s) 
   - Save your file(s) as .md

  ###> TS insight steps (.tsginsight)

  After a user has completed navigating a troubleshooter and reaches a leave node, an insight will be presented. Insight provides both Support Engineer and Customer ready content. Every leaf node in a troubleshooter is expected to be mapped to a TS insight, so it is very probable that you will need to author more than one insight. 

  **Note:** When applicable, you can re-use Insights already available in ADS. Also multiple leave nodes can be mapped to the same insight.

  - TSG Insights are created by authoring a json file. The following links provide the resources you will need to create the TS insights:
   [Intro to Insights](https://azuresupportcenterdocs.azurewebsites.net/developers/InsightDevelopment.html)
  [Recommendations on writing quality Insights](https://azuresupportcenterdocs.azurewebsites.net/developers/BuildingEffectiveInsights.html)
  [Insight Schema Summary](https://azuresupportcenterdocs.azurewebsites.net/developers/InsightDevelopment.html#schema-summary)

  - Create insight json file(s) that will help render the content in the insight card in ASC. Note that you will need to save each content step in a separate file. Use name(s) that is short but also properly describes the steps. This will make it easier for you in the future when making edits. 

    **Note:** Update the extension of insight file from (.json) to (.tsginsight) .

  - Update file(s) metadata properties:
    
    |**Property** |**Required** |**Comments**|
    |--|--|--|
    |**Id** |Yes| Generate a random Guid by running the following command in Powershell. “[Guid]::NewGuid()”. Or using [Online GUID generator](https://www.guidgenerator.com/). This is the Id that you will use in the Geneva Automation flow.| 
    |**OwnershipId** |Yes | Identify or create an OwnershipId by looking at the documentation. The OwnershipInfoV2() kusto function will enumerate the existing OwnershipIds. Please reach out to the ASC team, if you have questions. |
    |**Title** | Yes |Look at the tips documentation above |
    |**ImportanceLevel** |Yes | This should be “Critical” for Insights generated by Guided Troubleshooters |
    |**IssueCategory**|	Yes | Look at the tips documentation above |
    |**IssueSubCategory**|Yes | Put in the Guided Troubleshooter name |
    |**Description**|Yes | Look at the tips documentation above |
    |**RecommendedAction**|Yes | Look at the tips documentation above. Generate a random Guid for the Id there.|
    |**CustomerReadyContent**|Yes |Look at the tips documentation above. This field is the articleId from GitHub. Information on how to author customer ready content can be found [here](https://support-docs.azurewebsites.net/docs/articles/contentTypes/diagnostics/guidance.html). |
    |**Links**|	Yes| Look at the tips documentation above.| 
    |**ConfidenceLevel**|Yes|This should be “High” for Insights generated by Guided Troubleshooters |
    |**Scope**|	Yes| This should be “ResourceLevel” for Insights generated for a resource and “SubscriptionLevel” for Insights generated for a subscription|


   - Update the content 
   - Save your file(s) as .tsginsight

##Step 2 - Publish Troubleshooter Files
This section consists of 2 parts:

   ### > Publish Content (.md) files to SelfHelp Github repo

  - In order to create TSG content for the Guided Troubleshooter, you need to onboard to content service: Please follow these [instructions](https://support-docs.azurewebsites.net/docs/articles/onboarding/contentService/github.html). 
  - In order to create a TSG folder, please fork the repo: Please follow these [instructions](https://support-docs.azurewebsites.net/docs/articles/onboarding/contentService/forkrepo.html). And create a folder where all content articles related to your Guided Troubleshooter added.

    **Note:** naming convention for troubleshooter folder under "SelfHelpContent/ Articles/ Microsoft.<ServiceGroup>.<TSGName>_tsg"

  - It is recommended to use [Visual Studio Code](https://code.visualstudio.com/Download) to manage markdown files.
  - It is highly suggested/required to add these VS Code extensions: “Markdown Preview Enhanced” and “Azure Repos”.
  - Basic steps are as follows:
    - Fork the SelfHelpRepo to your own Github account.
    - Clone the repo – using a personal access token.
    - In the locally cloned repo, add a new folder and put all your *.md files there.
    - Review, move, modify your content in Visual Studio Code to make sure it generated correctly.
    - Commit your changes, push your changes.
    - Create a PR in github to merge your changes.
    - Sign off on your PR.

###> Publish Insight (.tsginsight) files  to ADS Partner repo

  - Create a folder for the GuidedTroubleshooter under ADS partner repo - [src/DiagnosticsApps/<ProductName>/Definitions/tsgInsights](https://msazure.visualstudio.com/One/_git/EngSys-ads-partner?path=%2Fsrc%2FDiagnosticsApps).
    - All of your *.tsginsight files will go here.
    - Folder structure: src/DiagnosticsApps/<ProductName>/Definitions/tsgInsights/<TSName>/*.tsginsight"

  - Basic steps:
    - Fork a branch from master:

     ![new branch.png](/.attachments/new%20branch-0eae7058-ffb6-4a86-a5da-4f9052ec7800.png)
![new branch 2.png](/.attachments/new%20branch%202-e3b7be06-c9e4-4e29-ac00-35ba3b865a80.png)
    - Add your TS folder if a folder for your guided troubleshooter does not exist. Please name the folder after the Guided TS.
    - Create a new file. Choose a name that is relevant and the extension should be .tsginsight. Paste in the json that you developed earlier.
    - Click Commit.
    - Follow the file create instructions for all other insights files.
    - Create a PR to merge your branch
    - Approve your PR

##Step 3 - Geneva Automation Workflow
Every troubleshooter is driven by a workflow created in Geneva Automation. The workflows created in Geneva Automation / [GA Prod](https://jarvis-west.dc.ad.msft.net/settings/automation) under ASCWorkflows account. Workflows are based on LogicApps workflow.  

![ascworkflows.png](/.attachments/ascworkflows-453aa89a-5833-4c2a-b25b-b4c9c3e6fb75.png =400x)
  

- ### Create the skeleton for the workflow
   
   - Click on the New button to create a new workflow. Choose "Start from blank".
   - Give a name to the workflow. The name should clearly indicate the troubleshooter and the part of the workflow functionality that it’s performing.

 
   - Search for Http and choose the trigger that says "When a HTTP request is received".

     ![new workflow 1.png](/.attachments/new%20workflow%201-62e836c0-3c45-45db-90c4-c439cec6c6ee.png)

   - Put the following JSON under "Request Body JSON Schema":

     ```
     {
     "type": "object",
     "properties": {
         "SolutionInstanceId": {
             "type": "string"
         }
       }
     }
     ```
     ![new workflow 2.png](/.attachments/new%20workflow%202-fe540ff6-662c-403c-86a6-77a8ba2105ad.png =400x)

  - Click on New Step and search for response and select the "Http Response" under Action: 

    ![response 1.png](/.attachments/response%201-0e8a6175-1b96-409a-bdc1-cd574ad9c037.png =400x)
  - In the Response connector, enter the JSON shown in the screenshot below. The workflow will open another popup (shown in the screenshot below) to select the SolutionInstanceId. Select the SolutionInstanceId.

     ```
     {
     "SolutionInstanceId": @{triggerBody()?['SolutionInstanceId']}
     }
     ```
    ![response 2.png](/.attachments/response%202-b953d937-a752-49dc-b775-b93f77e8ec47.png =400x)
 

    **Note:** The above steps has effectively said that when HTTP request is received by the workflow, parse the HTTP request body to find the SolutionInstanceId and return a 200 OK HTTP response with the SolutionInstanceId in the response. These steps are common for all the workflows.

  - Commit the changes – saving to a new branch

     **Note:** if you have no sufficient permissions to do the commit, please contact Saranga Goswami (<sarangag@microsoft.com>)

- ###Retrieve your Geneva Automation URL
  - When you commit your skeleton Geneva Automation workflow, a HTTP POST URL will be created.
  - Copy this value.
  - Visit the [onboarding portal](https://asctsgreporting.azurewebsites.net/):
    - Go to TSG Onboarding -> Manage TSG
    - Go to Step 24 – provide troubleshooter Geneva automation URL
    - Paste the HTTP POST URL and press Save

##Step 4 - Publish your TSG Definition file
 - In the onboarding portal, go to step 25 and click on the link. It will open a new browser window. The new window will have a JSON file.
 - Go to the ADS definitions repo:
   - Fork a branch
   - Create or use an existing folder
   - Folder schema: TroubleshooterSolutionsJson/OwnershipId/TsgName.json
   - Put the definition file contents into the folder/file
   - Save/commit and create a PR
   - Approve your PR


##Step 5 - Build Geneva Automation Workflow steps
Going back to Geneva automation workflow, the first three steps of every TSG will look the same:
1) When a HTTP request is received
2) Response (HTTP)
3) Logic Apps -> TroubleshooterWebhookStep

   ![first 3 steps.png](/.attachments/first%203%20steps-3574db04-cf61-492d-bcec-22d284ba3c78.png =400x)

At this point, your TS skeleton has the first 2 steps ready. To create the next step, you need to use a TroubleshooterWebhookStep:

  - Click on "New Step", search for workflow and select the Action to choose a LogicApps workflow:

    ![webhook 1.png](/.attachments/webhook%201-2a801790-1e66-4552-b57d-bdc90ee55164.png =400x)
 

  - In the menu that shows the option to choose an action, search for "webhook" and select the TroubleshooterWebhook:

    ![webhook 2.png](/.attachments/webhook%202-a7275068-b8f4-4ac7-80df-605ddd2df24e.png =400x)
    
       
  - Double click on the TroubleshooterWebhook connector to bring up the TroubleshooterWebhookSetup window:

    ![webhook 3.png](/.attachments/webhook%203-899708ad-f120-49a6-b7be-831d3bd21594.png =400x)

    ![webhook 4.png](/.attachments/webhook%204-4572f347-93ef-42e5-bee6-8289e982d70a.png =400x)
 
- The parameters that need to be entered here are the following:
 
  - SolutionInstanceId: The same variable is used every time.
  - StepUniqueIdentifier: A unique GUID you generate for this step, you can use Online GUID generator .
  - Step Title: The title of the step – can take the title from the XLS file
  - Step Type: Insight or Content 
  - Content ArticleID: The GUID of the markdown file in a content step, or the GUID of an *.tsginsight file if it is an Insight step
  - IsLastStep: Yes or No 
  - UserInput UserQuestion: The question for the step, if it’s not a last step
  - UserInput UserQuestionType: Always "SingleChoice"
  - UserInput UserQuestionOptions: The list of possible answers. +Add new item to add additional choices

The workflow skeleton is done now. But it should allow the UX to retrieve the content and show it to the user along with the used question so when the user selects an option, the workflow will decide next appropriate branch depending on the user response. To do this, you need to execute the Switch step:

 - Click on New Step and search for and select Switch action:

   ![switch 1.png](/.attachments/switch%201-5dd36939-b355-43c8-9541-431f6392f5e9.png =400x)

 - Click on the entry text box to choose a value and select Body under dynamic content:

   ![switch 2.png](/.attachments/switch%202-1369fab5-d6ab-4b09-bf71-f0d4abd9b798.png =400x)

 - Add the cases for the switch statement. The values in the case statements should match the values under UserQuestionOptions in the webhook step parameters referenced earlier. You can add more case options by clicking on the + button:

   ![switch 3.png](/.attachments/switch%203-a66bcb97-582a-46d3-9570-14187922f0f6.png =400x)

- Continue to create the workflows like we did above.

##Step 6 - The final commit in Geneva Automation

When you have fully built your Geneva Automation, you should be committing your changes along the way:
  - This time use the "commit" button and select "Create pull request"
  - You can also "View Pull Request" to view the PR
  - Approve your PR

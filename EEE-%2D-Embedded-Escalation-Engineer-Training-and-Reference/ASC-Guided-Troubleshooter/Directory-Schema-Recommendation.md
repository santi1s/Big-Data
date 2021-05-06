Please start using this recommendation for directory structure and filename structure when publishing TSGs – we need some standard rules moving forward for consistency and auto-publishing.

Centennial won’t approve PRs unless they follow this directory structure:


|Repository|Directory Structure  |
|--|--|
|SelfHelp  | /articles/troubleshooting-guide-$tsgNumber/*.md |
|GA  | /workflow /TroubleShooting-Guide-$tsgNumber/*.json |
| Insights | /src/DiagnosticApps/$ownershipId/Definitions/tsgInsights/*.tsginsight |
|Definitions | /src/NoCodeDiagnostics/Insights/TroubleshooterSolutionsJsons/$ ownershipId/Troubleshooting-Guide-$tsgNumber.json |

- **$tsgNumber** is your 6 digit TSG number assigned by the onboarding tool. 
- **$ownershipId** is the ownership id you assigned in onboarding. 

- **Example:**

  - Selfhelp: /articles/troubleshooting-guide-130646/*.md
  - GA: /workflow/Troubleshooting-Guide-130646/*.json
  - Insights: /src/DiagnosticsApps/Azure_Security_Security_Center/Definitions/tsgInsights/*.tsginsight
  - Definitions: : /src/NoCodeDiagnostics/Insights/TroubleshooterSolutionsJsons/Azure_Security_Security_Center/Troubleshooting-Guide-130646.json

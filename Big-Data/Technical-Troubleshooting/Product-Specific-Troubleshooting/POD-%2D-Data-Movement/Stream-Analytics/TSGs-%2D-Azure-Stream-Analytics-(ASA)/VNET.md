**The** Stream Analytics Product Group is working on a new feature release which is scheduled for Public Preview on September 22nd. It is planned for release with a couple of Customers onboarded, so we do not anticipate a big volume of cases. However, it is very important that CSS is aware of this feature and has sufficient training materials, troubleshooting guides and other support artifacts (like support topics, self-help etc.) ready before the launch. This feature is mainly to comply with JEDI requirements and also address a [long time limitation](https://feedback.azure.com/forums/270577-stream-analytics/suggestions/34846942-stream-analytics-vnet-support) of ASA which is connecting to secure sources behind Vnet. This is also a “Single Tenant” architecture as compared to our normal ASA jobs which work in a “shared-tenant” model. There might be challenges in whitelisting subscriptions and enabling access to the private preview documentation to the whole CSS group at this time, because we are so close to public preview.

#Overview of Azure Stream Analytics Cluster (Preview)
[Video Overview](https://web.microsoftstream.com/video/dd6aa1ff-0400-96f3-7b9f-f1eafa02d3a9) 
Azure Stream Analytics Cluster offers a single-tenant deployment for complex and demanding streaming scenarios. At full scale, Stream Analytics clusters can process more than 200 MB/second in real time. Stream Analytics jobs running on dedicated clusters can leverage all the features in the Standard offering and includes support for private link connectivity to your inputs and outputs.

Stream Analytics clusters are billed by Streaming Units (SUs) which represent the amount of CPU and memory resources allocated to your cluster. A Streaming Unit is the same across Standard and Dedicated offerings. You can purchase 36, 72, 108, 144, 180 or 216 SUs for each cluster. A Stream Analytics cluster can serve as the streaming platform for your organization and can be shared by different teams working on various use cases.

#What are Stream Analytics clusters
Stream Analytics clusters are powered by the same engine that powers Stream Analytics jobs running in a multi-tenant environment. The single tenant, dedicated cluster have the following features:

- Single tenant hosting with no noise from other tenants. Your resources are truly "isolated" and performs better when there are burst in traffic.
- Scale your cluster between 36 to 216 SUs as your streaming usage increases over time.
- VNet support that allows your Stream Analytics jobs to connect to other resources securely using private endpoints.
- Ability to author C# user-defined functions and custom deserializers in any region.
- Zero maintenance cost allowing you to focus your effort on building real-time analytics solutions.
- Commitment pricing [discounts](https://azure.microsoft.com/en-us/pricing/details/stream-analytics/).

#Private Preview documentation:
https://github.com/MicrosoftDocs/azure-docs-pr/pull/127907 (you have to use Single Sign on using Microsoft Open source)
**Note**: If you have not accessed private preview docs before from our private repos, follow these steps and then try to access the documentation again:
- Go to [aka.ms/azuregithub](aka.ms/azuregithub) o Tie your GitHub user name to Microsoft by following instructions [here](https://review.docs.microsoft.com/en-us/help/contribute/contribute-get-started-setup-github?branch=master)
- Under Organizations - search for Azure and join it (This step is mandatory)
- Once you do so, you automatically get access to the GitHub docs

#TSG Wiki Pages
**[TSG Overview](https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/13307/Troubleshooting-Dedicated-Cluster-errors-and-Private-Endpoint-errors)**
**[Debugging Dedicated Cluster Error](https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/13308/Debugging-Dedicated-Cluster-errors-and-Private-Endpoint-errors-using-Jarvis-logs)**


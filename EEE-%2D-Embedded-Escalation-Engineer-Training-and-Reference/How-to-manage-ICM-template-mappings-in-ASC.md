# [Template onboarding for IcM creation in ASC](https://azuresupportcenterdocs.azurewebsites.net/developers/asc/icm-integration.html)



I found it’s hard for us to manage or track these templates manually since we have a lot of hdinsight ICM templates. Some templates are based on support topic L1, L2 or L3. Other templates are based on different PG team. Besides, mapping json file is not good to manage in my opinion. I developed a perl script to parse mapping json files to csv. 

You can download perl script [here](https://microsoft-my.sharepoint.com/:u:/p/linjzhu/EUNKRqup1TpPvTG2PyDtuH0BaonbSPI6d_BjmeX9KYIMiA?e=hlDRls)

```
perl extractICMTemplate.pl --infile ICMTemplateMapping.json > TemplatesMap_0330.csv
```

- **infile** format
```json
{
  "id": "HDInsight",
  "Mapping": [
    {
      "SupportTopic": {
        "PESId": 1,
        "SupportTopicId": "N/A",
        "SupportTopicMatch": "Azure Sphere - Preview"
      },
      "EscalationInfo": [
        {
          "Severity": 3,
          "ServiceName": null,
          "TeamName": null,
          "ServiceId": 0,
          "TeamId": 0,
          "ServiceLevel": "All",
          "TicketSeverity": "All",
          "TemplateKey": "NvK1Kc",
          "TemplateTitle": "Azure Sphere Security Service template",
          "TemplateDescription": "Template to be used for triaging to CSS folks in azure sphere security service group",
          "Cloud": "Public"
        }
      ]
    }
  ]
}
```
- output format
This script generates SupportTopicMatch, TemplateKey and TemplateTitle fields in current version

This command can be run in any linux system(windows linux subsystem) or windows with perl installed.

## Steps
- download the mapping json file in jarvis and remove the two headlines
- run the above command
- open csv using excel and manage or save it as xlsx file
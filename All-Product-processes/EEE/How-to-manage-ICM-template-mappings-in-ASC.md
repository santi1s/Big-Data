# [Template onboarding for IcM creation in ASC](https://azuresupportcenterdocs.azurewebsites.net/developers/asc/icm-integration.html)



I found it’s hard for us to manage or track these templates manually since we have a lot of hdinsight ICM templates. Some templates are based on support topic L1, L2 or L3. Other templates are based on different PG team. Besides, mapping json file is not good to manage in my opinion. I developed a perl script to parse mapping json files to csv. 

```
perl extractICMTemplate.pl --infile ICMTemplateMapping.json > TemplatesMap_0330.csv
```

This command can be run in any linux system(windows linux subsystem) or windows with perl installed.


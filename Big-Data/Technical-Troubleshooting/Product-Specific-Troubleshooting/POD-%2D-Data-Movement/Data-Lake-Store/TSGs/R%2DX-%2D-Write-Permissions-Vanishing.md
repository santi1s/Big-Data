[[_TOC_]]

# The Issue
Your customer has correct permissions set, and correct default permissions set, but when they create new files and folders, some users or the Mask is showing a permission of r-x and not the expected rwx, and this is causing permissions problems.

# How to Troubleshoot

1. Ask if your customer is using Databricks/Hadoop/Spark to write these files/folders.
2. If so, have them check the configuration setting spark.hadoop.fs.permissions.umask on their cluster.
3. If it is set to 022, change the setting to 000. This will resolve the issue.

# What's Going On?

Hadoop Clusters/Spark Clusters use ACL permissions just like the data lake does.

That's why Data Lake even has ACLS. So it can play nice with Hadoop File Systems that already use ACLs.

That's also why we have Owning User and Owning Group and Mask and all that-- all of it comes from Hadoop.

And Databricks is just an overlay on top of a bunch of Hadoop clusters. Databricks spins up Hadoop clusters in the background to do all of its compute.

There is one feature that Hadoop/Spark clusters have that Data Lake does not have!

A feature called 'umask' or 'universal mask'.

It is a mask that is applied whenever a new file or folder is created. 

By  default the umask is set to 022 aka -- r-x.

This means that when a new file/folder is created using that cluster, the write permission on the mask gets removed because, just like the mask on the data lake side, you can't have more permissions than the mask has. 

So whenever I see a suspiciously missing write permissions, I always suspect they are using spark/hadoop/databricks.



To resolve this, we need to change the default mask (022) to custom mask (000) on Databricks end. You can set the following in Spark Configuration settings under your cluster configuration:


spark.hadoop.fs.permissions.umask-mode 000


# TL;DR
If your customer has write permissions mysteriously disappearing, ask if they're using Databricks or HDI and if yes, have them change the umask on the cluster to 000.

# Additional Reading

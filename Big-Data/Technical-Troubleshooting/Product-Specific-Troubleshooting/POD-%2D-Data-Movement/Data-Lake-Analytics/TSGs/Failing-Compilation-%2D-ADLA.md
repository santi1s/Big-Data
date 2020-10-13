Jobs that fail with this compilation error (or jobs that have a long compilation time) generally have a couple causes.
1.	The job script itself being very large/complex.
2.	 The table that the job is using is backed by many files.

How many files are your tables accessing? Or, how often to you insert to these tables, and how often do you use ALTER TABLE REBUILD? Every time you insert to a partition, a new file is created. ALTER TABLE REBUILD reduces the number of files, and can prevent these kinds of issues from happening.
Documentation: https://docs.microsoft.com/en-us/u-sql/ddl/tables/alter-table#rebuild

If you frequently see this issue, you can also try to use SET @@CodeCompilationParallelism = 1;
 
This decreases the amount of code that’s compiling in parallel which should usually lower the memory overhead. It can lead to slower compiles. The default number is 8 so anything lower than that should help. 

Get a Graphical Representation of Job Topology from ASC
Job topology can be thought of as the job’s map. Topology will show us every step in the process from input to output. We can use the topology to identify possible bottlenecks, or other less than ideal structures.
Prerequisites
We need to install Visual Studio (any version other than code), and a plugin that will let us visualize DGML files in a GUI.
If  you have not yet installed Visual Studio…
1.)	Download Visual Studio from https://visualstudio.microsoft.com/
a.	 ![0.png](/.attachments/0-a9d84aa9-322b-443e-ba4c-96d77d0c7a1a.png)
b.	Do not download Visual Studio Code
2.)	Run the Visual Studio Installer, it will take a few minutes to download and load the installer.
3.)	Once the installer has loaded select the “Individual Components”
a.	 ![1.png](/.attachments/1-292982fb-c0f4-4bd7-a27b-5da623c3d3fb.png)
4.)	Search for “Azure Stream Analytics”
a.	 ![2.png](/.attachments/2-d27eff94-752e-414a-8834-efe294117548.png)
If you have already installed Visual Studio…
1.)	Run the Visual Studio Installer
a.	 ![3.png](/.attachments/3-9134aacd-e23a-41dd-bed6-5ecb1d35a172.png)
2.)	Select your preferred version of visual studio and select “More” and from its dropdown menu “Modify”.
a.	 ![4.png](/.attachments/4-01d15a66-22c1-464c-9343-0a274c9c3839.png)
3.)	Select Individual Components
a.	 ![5.png](/.attachments/5-a0515b34-cf17-465c-afb6-2436129cce10.png)
4.)	In the text box search for DGML, and check the box next to “DGML Editor”
a.	 ![6.png](/.attachments/6-738429c0-9f84-4189-ae7b-5493f5d34513.png)
5.)	Select and install option:
a.	 ![7.png](/.attachments/7-1cb47102-901b-4e0c-9753-919e8f7e910c.png)

Downloading and Converting DGML
1.)	From ASC, select an insight
a.	 ![8.png](/.attachments/8-3aeff02e-50f8-4a38-b184-27d12668da86.png)
2.)	Expand the insight, and select “TopologyDgml” link
a.	 ![9.png](/.attachments/9-9e95b79a-8046-45fb-8c10-93555a631b4c.png)
3.)	A new tab to Jarvis will open, once the logs have loaded, download them as a zip
a.	 ![10.png](/.attachments/10-2f08277c-d0cd-4bec-93e6-7d0e3e49b5a6.png)
b.	 ![11.png](/.attachments/11-969626a5-7e18-433a-8dde-9b3381713c04.png)
4.)	In another browser tab, navigate to the ASA Wizard at https://aka.ms/asawizard, and select “DGML Converter”
a.	 ![12.png](/.attachments/12-1d3de6c2-0c2c-415b-ae7a-ba1a889fb16d.png)
5.)	Click the “Browse” button to select the zip archive that contains the XML data we will convert to DGML:
a.	 ![13.png](/.attachments/13-5d4447e1-8758-403b-8986-ccea47928786.png)
b.	 ![14.png](/.attachments/14-17772e1e-814b-4452-880a-e931656db960.png)
6.)	Click “Converter” to convert the file to DGML, if successful you will see a DGML file downloaded:
a.	 ![15.png](/.attachments/15-d825c1f4-85e7-4ed3-b373-8ed2fdcaf4da.png)
b.	 ![16.png](/.attachments/16-62800251-ef96-4407-88df-ff2b6cc2c13c.png)
7.)	We can now double click the dgml file to open it in Visual Studio
8.)	When loaded, change the DGML layout to “Right to Left”
a.	 ![17.png](/.attachments/17-9cfdf95b-fa9c-4bc5-96e9-84a32d788e15.png)
9.)	Review the DGML.

How to Analyze DGML Topology
The DGML file shows us the topology of the Azure Stream analytics job; you can think of this like the job’s internal map.
Before we can learn from the Topology we should first understand the elements. Below is an example Topology viewing from Right to Left:
 ![18.png](/.attachments/18-0c0968e3-f85c-4a86-b1d1-1c82828c3a83.png)
Let’s break this down a bit, starting by looking at the small boxes label “node”:
 ![19.png](/.attachments/19-069522d8-3046-4ca2-baa8-c58ac91e4757.png)
Each one of these nodes represents a discrete unit of processing that the job is using, the above example are processing nodes for input. The leftmost block is the input adapter, and you can get details on that particular adapter by hovering over:
 ![20.png](/.attachments/20-736fd7ad-b255-4fa3-979b-5c8204ddf1f9.png)
From the above screenshot we can see that this particular node is pulling data from an Event Hub on Partition 0 (up to 31, depending on how the customer set up their IoT hub).

We can see similar details for output:
 ![21.png](/.attachments/21-2e30dbd4-0c55-4c2a-9590-4f7c76d3508e.png)
In the above example we can see the output is an event hub, with a total of 32 partitions.

How to interpret Topology
The major thing we are looking for in the Topology view is bottlenecks, either on the input or the output. The example we showed above is an example of bottleneck on the output:
![18.png](/.attachments/18-2fb155ef-dbe0-4197-828e-215d7e6025f3.png)
 
Following the diagram from left to right, we all of the input nodes converging on a single output node which can lead to (or explain) degraded performance. Why do we see this pattern? It is because the job is not fully partitioned; there is no 1:1 relationship between the number of input and output partitions. Most inputs and output support full partitioning (check docs).
An example of a fully partitioned job
 
Every input partition (excluding reference data inputs, which are joined into the stream) has its own output partition. Let’s look closer:
 
![23.png](/.attachments/23-f5cd7133-9a14-4a64-a90b-ec2f6b2f2e18.png)
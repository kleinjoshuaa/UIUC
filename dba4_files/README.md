## DBA4

Course 4 changes tack a bit and goes into information on how to query Data Warehouses. The language used for the course is called [ MDX](http://en.wikipedia.org/wiki/MultiDimensional_eXpressions). 

MDX is a language that originated for use in Microsoft's [ Analysis Services ](http://en.wikipedia.org/wiki/Microsoft_Analysis_Services) tool for data mining. Analysis Services is an OLAP (online analytical processing) server from MS that is a component of MS SQL Server.

MDX stands for Multi-Dimensional eXpressions. It is a language that is based on the concept that expressions for querying a data warehouse should center around a set of dimensions and then a fact (referred to in MDX as a measure) to return a table of values that answer a question about the data in the data warehouse warehouse. 

This organization of data is called an [OLAP cube](http://en.wikipedia.org/wiki/OLAP_cube). The cube is a way to visualize how the data in a data warehouse is structured. Cubes are defined in a schema xml file that defines how the tables in the OLAP database relate to each other.

<p> In this course, since we didn't have access to a Microsoft SQL Server, we used [Pentaho Mondrian](http://mondrian.pentaho.com/) which is an open source OLAP server that is compatible with the MDX language specification. To interrogate the data warehouse, we used [JPivot](http://jpivot.sourceforge.net/), which is an open source solution for navigating and querying data warehouses. 

 It works like this. MDX Queries are sent to the OLAP server. Then the OLAP server consults a schema to determine how best it can answer the query. After that, the server will then either consult it’s internal cache or generate SQL to answer the query. Then, after that the data is returned to you. 

Here’s an example of what JPivot looks like after running a query on the HR data cube I generated for my final project: 
![](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/query.png)

For my final project for DBA4, I created an XML schema for Mondrian. This schema creates a new cube called **HR**. This cube contains 5 dimensions and 3 measures related to questions that could come up by the HR department of a company, such as employee salaries, store employee counts, and so on. The source MySQL data warehouse used is the _FoodMart 2000_ sample database that was shipped with Microsoft SQL Server 2000 Analysis Services.

Here is the [FoodMart 2000 SQL Database](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/dba4_files/foodmart.sql.bz2).

 And here is the [ My XML Schema for Mondrian ](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/dba4_files/final_project.xml) I generated.

 To test the XML schema, I wrote a selection of [ MDX queries for FoodMart](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/dba4_files/dba4_queries.tar.bz2).

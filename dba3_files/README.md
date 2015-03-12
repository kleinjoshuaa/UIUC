## DBA3

DBA3 was quite a serious course about Data Warehouseing.  I used [ Talend Open Studio ](http://www.talend.com/index.php) to create a data warehouse from the [ Sakila](http://dev.mysql.com/doc/workbench/en/wb-sakila-eer-png.html) database that is included with the MySQL installation. The final project in this course was to create another data warehouse from the [ Northwind Traders ](http://msdn.microsoft.com/en-us/library/office/aa140018(v=office.10).aspx) DB.

 In the process of creating a data warehouse, what you are doing is converting an OLTP (Online Transactional Processing) database into one that more readily can do OLAP (Online Analytical Processing). The transactional processing that takes place in an OLTP database is the common style of SQL database updates that take place any time a piece of data is updated. OLTP databases use what can be complex schema designs that are usually built for working with applications or websites that face the outside world. 

OLAP databases use the [ star schema ](http://en.wikipedia.org/wiki/Star_schema) model which, which is one 'fact' in a table row that is associated in that same row with multiple 'dimension' keys, and those dimension keys are linked to dimension tables that hold more data about each of those dimensions. 

*   An example Star Schema from the Wikipedia Page
![](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/star_schema.png)


Now you may be asking yourself, well, what is a dimension? What is a fact? Simply put, a fact is a number that quantifies an action. It's sometimes referred to as a measure. Facts tell us the number of something where dimensions define information about that number. For example, to answer the question "How much in sales did we do by month?" The fact is the number of sales and the dimension is 'by month'. Or one could ask  'How many times users hit a website by month, country, and OS'. Month, country and OS would be dimensions and the number of hits would be a fact. However, there is also the case of 'factless facts'. Factless facts are facts that store whether an event happened or it did not. Factless facts are composed of dimensions, the fact column in a table for a factless fact is simply a bool TRUE if all of the dimensions in the table exist together. For example a fact table in the Sakila DVD rental data warehouse could store whether a customer created an account at a store on a specific day. The number that quantifies the action of creating an account is simply 1, or TRUE. 

 Dimensions can change somtimes, and we want to keep track of those dimensions so that we know when a particular dimension associated with a fact was valid. There are a few ways to do this, and generally this is broken up into 5 'types' or ways of handling of slowly changing dimension, or SCD. (They are called 'slowly' changing dimensions because they don't change at a regular time-based interval.)

*   Type 0: Do nothing, don't update the dimension when it changes.
*   Type 1: Update the dimension when it changes. Keep no trace of the previous value for that dimension.
*   Type 2: Add a new row when the dimension changes, use 'start_date' and 'end_date' columns to keep track of valid dates for the dimension values in all rows.
*   Type 3: Use 'current_[col_name]' and 'previous_[col_name]' columns to update when a dimension ([col_name]) value changes. The row may or may not have an effective date column.*   Type 4: The dimension table always contains the most up to date values for the dimensions, and the history is stored in a different table with an additional 'change_date' column so that one knows when it changed.

It is possible to create a dimension table with different columns being different SCD types as well. For example in the dimCustomer dimension for the Sakila data warehouse you could make your Last_Name column in a dimension table Type 1 if you don't really care when people changed their name, but make their address column a Type 2 because those are more important to keep track of where your customers are moving over time.

 Now another question would be, well, where do you get the data for your Data Warehouse? Good question, because this is where Talend Open Studio (TOS) comes in. TOS is an Extract-Transform-Load (ETL) tool. What is ETL? ETL is a process by which data is transferred from other data sources (including OLTP databases, Excel files, CSV files, etc.) into an OLAP database for data warehousing. I put together a text file to describe the data transformations used for creating the Sakila data warehouse from the Sakila OLTP database. You can get that [ here ](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/dimensions.txt).

TOS greatly simplifies the process of pulling data from many other sources and allowing the user to create reusable project flowgraphs that can be re-run any time the source data changes. 

Below you can see the screenshots for both of my data warehouse models. These data warehouses also include tables that log each run and each of the tables has a 'run_id' column that allows auditing to determing which run added that specific column to the data warehouse.

*   The ETL model that creates the Northwind Traders data warehouse
![](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/nwt.png)



*   The ETL model that creates the Sakila data warehouse 
![](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/sakiladw.png)


And here you can get the data warehouses I created using TOS:

*   [ Sakila ](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/sakiladw.sql)
*   [ Northwind Traders ](https://raw.githubusercontent.com/kleinjoshuaa/UIUC_Certificate/master/Northwinddw.sql)

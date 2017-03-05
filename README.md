# Table-Extract-for-Excel-Spreadsheets

Often times I find myself selecting from a table and copying/pasting the data into an excel spreadsheet. However, this becomes troublesome when copying from very large tables with millions of rows. An excel spreadsheet only allows 1,048,576 columns, so essentially if every column was to be copied from the database into an excel file, the table would have to be split into several chunks.

The SQL in this repository will perform this task by printing N amount of sets, each 10<sup>20</sup> rows large. The output from your DBMS can be copied and pasted into an excel spreadsheet into N different sheets. All that is required in this SQL is that the table name, columns to return, and columns to order by are inserted into the SQL before executing.

From my experience I have noticed that when pasting this many rows in a spreadsheet, only a maximum of 4 columns can be pasted before Excel errors out. You're probably thinking, "who in their right mind would want so much data in an excel sheet"? Well, while I have no answer to that question I can provide my solution to this task.

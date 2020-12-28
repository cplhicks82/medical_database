# medical_database
A MS Sql Server database project with faux patient/doctor data, along with a simple Django web application that allows new patient data input via stored procedures.
I started by creating a database in SSMS, and added tables that I thought would be applicable to a generic medical office. These included a Patient table, a Doctor table, a table
to record patient visits, a table to record patient symptoms, and a few others. All tables are related via primary and foreign keys.

Next, I created a trigger that activates any time a patient is deleted from the Patient table; this trigger adds the deleted patient to the Dropped Patients table.

I also created a couple views to see some commonly requested data together in one table.

Finally, I created a stored procedure that allows the input of new patient data to the Patient Table.

Then, using Python and Django, I created a very simple web app that interfaces with the stored procedure in SSMS. Using the web app, I am able to enter new patient data; once the
data is saved in the app, it transfers to the database hosted in MS Sql Server. This app isn't hosted online anywhere; it is only accessile from my local machine.

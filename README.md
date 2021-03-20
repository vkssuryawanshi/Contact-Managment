# Contact-Managment
Manages contacts with CURD operations using spring MVC and hibernate with MySQL Database

## Steps to run the the Project:

###### Clone the repositery "https://github.com/vkssuryawanshi/Contact-Managment.git" in your eclipse and use this as project and wait for maven build which will download all dependencies.
###### you must have the MySQL databse running on your machin in which you have to create the schema with following command.
  - CREATE SCHEMA `contact_managment`; .
  - the username is 'root' and password is 'root' for my current configuration of mysql server database.
  - If you have differenct credetials please change them into file "/contact-managment/WebContent/WEB-INF/servlet-config.xml" under datasource bean.  
###### In eclipse run the project on server
###### After successfully stating of server you can visit the url - http://localhost:8080/contact-managment/customer/ which ia landing page where you caan add the customer contacts.


Thank you..

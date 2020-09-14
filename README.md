# Student Module Web Service
 Student module for school. This module allows you to view, add, update and delete students information from the database using RESTful web service.
 
 Tools used in developing this web service are as follows:
 1) Spring Tool Suite 4.7.2 (STS)
 2) JDK 8 Update 161 (64 bit)
 3) MySQL Server 5.5.21
 
 Startup Guide:
 1) Install the above listed programs (for STS, extract it from jar file).
 2) Edit SpringToolSuite4.ini file in STS directory and add the following lines (below openFile text):
 
 >-vm  
C:\Program Files\Java\jdk1.8.0_161\bin\javaw.exe 
 
 3) Import Student Module Web Service projects into STS (hissdk-frontend and hissdk-backend).
 4) Import users_database.sql in database folder into local MySQL server.
 5) In STS, force update Maven projects. Navigation are as follows.
 >Right click hissdk-frontend (or hissdk-backend) in STS > Maven > Update Project > Tick hissdk-frontend, hissdk-backend and Force Update of Snapshots/Releases checkboxes > click OK button.
 6) Search for application.properties and change the value in spring.datasource.username and spring.datasource.password according to local MySQL server.
 7) Start hissdk-backend project (please ensure port 8081 is not in used). Navigation:
 >Right click hissdk-backend > Run As > Spring Boot App
 8) Start hissdk-frontend project (please ensure port 8080 is not in used). Navigation:
 >Right click hissdk-frontend > Run As > Spring Boot App
 9) Open http://localhost:8080/ in browser.
 


## Welcome

### About
This folder is meant to accompany the related "Develop Python Web Apps with Oracle Autonomous Database Low-code REST APIs" LiveLab.

The complete Workshop is available on [Oracle's LiveLabs page](*https://apexapps.oracle.com/pls/apex/dbpm/r/livelabs/home). 

### Folder Contents
This folder consists of four main parts:

#### `db_scripts`

These scripts contain everything you should need to recreate the Workshop's database environment. Since the Workshop relies on already constructed Oracle REST APIs you shouldn't need to recreate anything. 

<i>However</i> should you wish to recreate this environment in your own Autonomous Database, these scripts will be very helpful for you. To create the environment run the following SQL scripts in the SQL Worksheet of your Oracle Autonomous Database's Database Actions: 
1. `create_tables.sql`  
2. `insert_data.sql`
3. `modules_definitions.sql`

#### `static` 
These are the images used by the sample web application. Since this application is small in size, there is not much in this folder. Depending on the size of your application, you may have more stored here. 

Should you wish to add additional images, store them here. Additionally, there is a base SVG file which was used to create a PNG of the same name. We've included helpful comments in the SVG file on how to manipulate properties of SVG images.

#### `templates`
This folder includes all the HTML files used to display the application in the browser. 

The files do rely on inheritance. For instance, the `base.html` file includes all Bootstrap JavaScript and CSS APIs used to render elements and styling. Additionally, you'll see JavaScript functions have been included in this file. 

We've created a separate `navbar.html` file, which has also been included in the `base.html` file. From here, you'll see the `base.html` file has been included in all other HTML files This allows `base` and `navbar` properties to be loaded in all other HTML files. 

#### `app.py` 
The Python application. This contains extensive commenting. The Python file and commenting can be used as reference or a foundation for iterating on the existing application. By no means is this a production-ready application. Rather the goal is to educate the user on working with Python, the Flask micro-framework, and Oracle REST APIs. 

### Oracle REST APIs
This Workshop is structured around a Resource Module which consists of several Resource Templates and Resource Handlers. 

You may be familiar with Postman or the OpenAPI's Swagger editor. If you like, you can use either to test and explore the base ORDS URI: https://yfuxkbz2ls7taze-ordshandsonlabs.adb.us-phoenix-1.oraclecloudapps.com/ords/python/open-api-catalog/flask/
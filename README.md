## Welcome

### About
Python Web Application, using Oracle Rest Data Services (ORDS). The Database is an Oracle Autonomous Database that was created in Oracle cloud Infrastruture.

### Folder Contents
This folder consists of four main parts:

## Prerequisites:

1. **Python 3 or later**: Python is a programming language used for web development, data analysis, artificial intelligence, and more. You can download Python from the official website: [python.org](https://www.python.org/downloads/).

2. **Virtual Environment (venv)**: Virtual environments allow you to create isolated environments for Python projects. This helps manage dependencies and avoid conflicts between different projects. You can create a virtual environment using the `venv` module, which is included in Python 3. To create a virtual environment, run the following command:
    ```bash
    python3 -m venv myenv
    ```

3. **Activate the Virtual Environment**: After creating a virtual environment, you need to activate it. This ensures that any Python packages you install are isolated within the virtual environment. To activate the virtual environment, run the appropriate command based on your operating system:
    - On Windows:
        ```bash
        myenv\Scripts\activate
        ```
    - On Unix or MacOS:
        ```bash
        source myenv/bin/activate
        ```

4. **Flask**: Flask is a lightweight web framework for Python. It provides tools, libraries, and utilities for building web applications. You can install Flask using pip, the Python package manager, within your virtual environment. Run the following command:
    ```bash
    python3 -m pip install Flask
    ```

5. **Requests**: Requests is a Python library used for making HTTP requests. It simplifies the process of sending HTTP requests and processing responses. You can install Requests using pip within your virtual environment. Run the following command:
    ```bash
    python3 -m pip install requests
    ```

6. **Folium**: Folium is a Python library for creating interactive maps. It is based on the Leaflet.js library. You can install Folium using pip within your virtual environment. Run the following command:
    ```bash
    python3 -m pip install folium
    ```



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

I've created a separate `navbar.html` file, which has also been included in the `base.html` file. From here, you'll see the `base.html` file has been included in all other HTML files This allows `base` and `navbar` properties to be loaded in all other HTML files. 

#### `app.py` 
The Python application. This contains extensive commenting. The Python file and commenting can be used as reference or a foundation for iterating on the existing application. By no means is this a production-ready application. Rather the goal is to educate the user on working with Python, the Flask micro-framework, and Oracle REST APIs. 

### Oracle REST APIs
This Workshop is structured around a Resource Module which consists of several Resource Templates and Resource Handlers. 

You may be familiar with Postman or the OpenAPI's Swagger editor. If you like, you can use either to test and explore the base ORDS URI: https://yfuxkbz2ls7taze-ordshandsonlabs.adb.us-phoenix-1.oraclecloudapps.com/ords/python/open-api-catalog/flask/


### BEST TO KNOW 

URL OF THE DOCUMENTATION : https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/run-workshop?session=116589809390275 
Jinja                    : is a web template engine for the Python programming language. Special placeholders in the template allow writing code similar to Python syntax.
	

	{% ... %} - used for statements
	{{ ... }} - used for expressions
	{# ... #} - used for comments		 


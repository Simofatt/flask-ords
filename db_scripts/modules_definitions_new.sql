
-- Generated by ORDS REST Data Services 22.2.1.r2021302
-- Schema: PYTHON  Date: Wed Aug 24 02:34:29 2022 
--

BEGIN
  ORDS.ENABLE_SCHEMA(
      p_enabled             => TRUE,
      p_schema              => 'PYTHON',
      p_url_mapping_type    => 'BASE_PATH',
      p_url_mapping_pattern => 'python',
      p_auto_rest_auth      => TRUE);
    
  ORDS.DEFINE_MODULE(
      p_module_name    => 'flask',
      p_base_path      => '/flask/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED',
      p_comments       => 'The Resource Module for our Flask application. This is our BASE URI. All Resource Templates and their Resource Handlers will added to the end of this URI.');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'products/pricing/:product_id',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'A Resource Template that will interact with the Products table. We''ll create a Resource Handler for the GET Method for HTTPS Operations.');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'products/pricing/:product_id',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_mimes_allowed  => NULL,
      p_comments       => 'The "products/descriptions/" and "products/pricing/" Resource Templates are similar in their GET responses. The Resource Handlers (as we see here) are equally similar. Whereas the "/descriptions" Template and Handler return product description information, this one returns product pricing information when a "product_id" is given.',
      p_source         => 
'select PRODUCT_PRICE from PRODUCTS
where PRODUCT_ID = :product_id');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'museums/',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'A Resource Template created for GET and POST requests to our Museums table.');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'museums/',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => NULL,
      p_source         => 
'BEGIN
INSERT INTO MUSEUMS(MUSEUM_NAME, MUSEUM_LOCATION, MUSEUM_LAT, MUSEUM_LONG)
VALUES (:MUSEUM_NAME, :MUSEUM_LOCATION, :MUSEUM_LAT
, :MUSEUM_LONG); 
COMMIT;
:status_code :=201;
:message :=''Museum successfully added.'';
END;');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'museums/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_mimes_allowed  => NULL,
      p_comments       => 'A GET request for our Museums table. This is the endpoint responsible for providing our Folium map with required information.',
      p_source         => 
'SELECT MUSEUM_ID, MUSEUM_NAME, MUSEUM_LAT, MUSEUM_LONG
FROM MUSEUMS');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'campaigns/newsletter',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'This Resource Template is left unfinished. Should you accept the challenge, begin with the Resource Handler that has been provided for you. When you have completed this challenge be sure to tag us on Twitter - @OracleREST 

Good luck!');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'campaigns/newsletter',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => 'This is simply an example of what you could do with a Resource Handler. What you have here will depend on what inputs are being entered in your Flask application. You can always change or modify what you see here. At the least, this should provide you with a good foundation to build on.',
      p_source         => 
'BEGIN
INSERT INTO CAMPAIGNS (CUSTOMER_FIRST_NAME, CUSTOMER_LAST_NAME, CUSTOMER_EMAIL, CAMPAIGN_TYPE)
VALUES (:CUSTOMER_FIRST_NAME, :CUSTOMER_LAST_NAME, :CUSTOMER_EMAIL, :CAMPAIGN_TYPE);
:status_code := 201; 
END;');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'products/descriptions/:product_id',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'A Resource Template that will interact with the Products table. We''ll create a Resource Handler for the GET Method for HTTPS Operations.');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'products/descriptions/:product_id',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_mimes_allowed  => NULL,
      p_comments       => 'The "products/descriptions/" and "products/pricing/" Resource Templates are similar in their GET responses. The Resource Handlers (as we see here) are equally similar. Whereas the "/pricing" Template and Handler return product pricing information, this Handler returns product descriptions when a "product_id" is given.',
      p_source         => 
'SELECT PRODUCT_DESCRIPTION FROM PRODUCTS
WHERE PRODUCT_ID = :product_id');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'products/',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => NULL);

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'products/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => 'A GET request used to populate the "Product" field on the Order Form HTML page of the associated Flask application.',
      p_source         => 
'SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_DESCRIPTION, PRODUCT_STATUS, PRODUCT_PRICE
FROM PRODUCTS');

  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'flask',
      p_pattern        => 'orders/',
      p_priority       => 0,
      p_etag_type      => 'HASH',
      p_etag_query     => NULL,
      p_comments       => 'A Resource Template that will interact with the Orders table. We''ll create Resource Handlers for both GET and POST Methods for HTTPS Operations.');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'orders/',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_mimes_allowed  => NULL,
      p_comments       => 'This is a POST request which is responsible for updating an Orders table in your Autonomous Database. When a user makes a ticket selection, and chooses to purchases tickets, their selection is sent to this table as a new row.',
      p_source         => 
'BEGIN
INSERT INTO ORDERS(PRODUCT_ID, QUANTITY, TOTAL_PRICE)
VALUES (nvl(:PRODUCT_ID, 42), nvl(:QUANTITY, 42), nvl(:TOTAL_PRICE, 42));
:status_code := 201;
END;');

  ORDS.DEFINE_HANDLER(
      p_module_name    => 'flask',
      p_pattern        => 'orders/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_items_per_page => 25,
      p_mimes_allowed  => NULL,
      p_comments       => 'This is a GET request which will be used on the "orderhistory.html" page in our Flask application. This GET request retrieves information from an Orders table, and presents it to the user as a table comprised of past orders.',
      p_source         => 
'SELECT o.ORDER_ID, p.PRODUCT_NAME, p.PRODUCT_DESCRIPTION, o.QUANTITY, 
TO_CHAR(o.TOTAL_PRICE,''L99G999D99MI'',''NLS_NUMERIC_CHARACTERS = ''''.,''''
               NLS_CURRENCY = $'') 
TOTAL_PRICE FROM ORDERS o, PRODUCTS p
WHERE o.PRODUCT_ID  = p.PRODUCT_ID
ORDER BY o.ORDER_ID');  
        
COMMIT;

END;
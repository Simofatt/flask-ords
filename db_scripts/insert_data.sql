/* Here you'll see two sets of attributes and corresponding values. One set for the Museums table, the other for the Products table. You will want to use the "create_tables_used_by_flask_app" script before using this script. */

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Marvel Avengers S.T.A.T.I.O.N',
    '3300 S Las Vegas Blvd, Las Vegas, NV 89109',
    36.12537952,
    -115.1702476
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'National Honor Society Museum',
    '8076 W Sahara Ave a1, Las Vegas, NV 89117',
    36.14555907,
    -115.2673059
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Origen Museum at Springs Preserve',
    '333 S Valley View Blvd, Las Vegas, NV 89107',
    36.17150733,
    -115.1901764
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Zak Bagans'' The Haunted Museum',
    '600 E Charleston Blvd, Las Vegas, NV 89104',
    36.15861286,
    -115.1460932
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Mob Museum',
    '300 Stewart Ave, Las Vegas, NV 89101',
    36.17302333,
    -115.1411966
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Neon Museum',
    '770 Las Vegas Blvd N, Las Vegas, NV 89101',
    36.17714842,
    -115.1353159
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Pinball Hall of Fame',
   '4925 Las Vegas Blvd S, Las Vegas, NV 89119',
   36.08487544,
   -115.1719657
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Elvis Pressley Museum',
    '3000 Paradise Rd, Las Vegas, NV 89109',
    36.13643173,
    -115.1517817
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Hollywood Cars Museum',
    '5115 Dean Martin Dr UNIT 905, Las Vegas, NV 89118',
    36.09798555,
    -115.1826971
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Museum of Selfies',
    'LINQ Promenade, 3545 S Las Vegas Blvd Suite L-07B, Las Vegas, NV 89109',
    36.11793065,
    -115.1702477
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Hunger Games: The Exhibition',
    '3799 S Las Vegas Blvd, Las Vegas, NV 89109',
    36.1038771,
    -115.1678181

);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Nostalgia Street Rods Private Collection',
    '5375 Cameron St M, Las Vegas, NV 89118',
    36.09239465,
    -115.2042447
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'The Carroll Shelby Heritage Center',
    '6405 Ensworth St, Las Vegas, NV 89119',
    36.07218443,
    -115.1792393
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Madame Tussauds',
    '3377 S Las Vegas Blvd Ste. 2001, Las Vegas, NV 89109',
    36.12200998,
    -115.1713134
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Tom Devlin''s Monster Museum',
    '1310 Boulder City Pkwy, Boulder City, NV 89005',
    35.97235066,
    -114.8505897
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Nevada State Railroad Museum Boulder City',
    '601 Yucca St, Boulder City, NV 89005',
    35.97380329,
    -114.8547506
);

INSERT INTO museums (
    museum_name,
    museum_location,
    museum_lat,
    museum_long
) VALUES (
    'Shan-Gri-La Prehistoric Park',
    '733 Greenway Rd, Henderson, NV 89002',
    36.00660625,
    -114.976366
);
/* Here you will see the product attributes and values for our "Products" table. Like most of this Workshop, the contents are fairly straightforward. The goal here is to create a simple table, nothing more. Something that we can easily manipulate with Flask and Oracle REST APIs. Less complex is better here.*/ 

INSERT INTO products (
    product_name,
    product_description,
    product_status,
    product_price
) VALUES (
    'Single Access Day Pass',
    'Only have enough time for just one stop? No worries, try our Single Access Pass for a quick diversion!',
    'Valid',
    24.99 
);

INSERT INTO products (
    product_name,
    product_description,
    product_status,
    product_price
) VALUES (
    'Pick-3 Day Pass',
    'Whoa, look at you Gulliver! Keep the fun going with our most popular option, the Pick-3 Access Pass!',
    'Valid',
    54.99 
);

INSERT INTO products (
    product_name,
    product_description,
    product_status,
    product_price
) VALUES (
    'Unlimited Access Day Pass',
    'Better stay hydrated for this one! The world is your oyster. Seize the day with our most inclusive Day Pass.',
    'Valid',
    94.99 
);

commit;
/*
    Script is just for aero bar currently
*/

/*  ===========================        
            Aero Bar  
    ===========================          
*/
/*INSERT INTO transaction (total_price, date) VALUES (3.49, '2020-01-20');
INSERT INTO name (name) VALUES ('aero');
INSERT INTO brand (name) VALUES ('nestle');
INSERT INTO category (name) VALUES ('chocolate');
INSERT INTO type (name) VALUES ('milk');
INSERT INTO size (type) VALUES ('27 grams');
INSERT INTO offer (type) VALUES (default);
INSERT INTO location (town, county, country) VALUES ('loughrea', 'galway', default);
INSERT INTO shop (name, location_id) VALUES ('supervalu', 1);
INSERT INTO description (brand, category, type) VALUES ('nestle', 'chocolate', 'milk');
INSERT INTO item (name, description_id, size, price, transaction_id, shop_id, offer_id) VALUES ('aero', 1, '27 grams', 1.00, 1, 1, 1);*/


/*  ===========================        
        Alpro Hazelnut Milk  
    ===========================          
*/
INSERT INTO transaction (total_price, date) VALUES (3.49, '2020-01-20');
INSERT INTO name (name) VALUES ('alpro hazelnut');
INSERT INTO brand (name) VALUES ('alpro');
INSERT INTO category (name) VALUES ('milk');
INSERT INTO type (name) VALUES ('hazelnut');
INSERT INTO size (type) VALUES ('1 litre');
INSERT INTO offer (type) VALUES (default);
INSERT INTO location (town, county, country) VALUES ('loughrea', 'galway', default);
INSERT INTO shop (name, location_id) VALUES ('supervalu', default);
INSERT INTO description (brand, category, type) VALUES ('alpro', 'milk', 'hazelnut');
INSERT INTO item (name, description_id, size, price, transaction_id, shop_id, offer_id) VALUES ('alpro hazelnut', default, '1 litre', 2.49, default, default, default);


/*

    NOTE

    * An id must be given at this point, it will not recognise that it belongs to an already existing id
    * When inserting only use lowercase or force this as the same name can appear twice due to having uppercase letters
    * For location table, town, county and country need to make up a composite primary key to stop duplicate entries
    * The above point applies for the offer table, make type the primary key or unique
    * Also the shop table, make name and location_id the primary key or unique
    * Also the transaction table, make total_price and date the primary key or unique
    * For the above point, the time will need to be added to the timestamp or else there's the very slight chance the entries won't be unique

*/








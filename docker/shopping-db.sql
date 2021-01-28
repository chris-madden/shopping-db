CREATE TABLE IF NOT EXISTS transaction (
    id SERIAL PRIMARY KEY, 
    total_price MONEY NOT NULL,
    date TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

CREATE TABLE IF NOT EXISTS name (
    name VARCHAR(255) PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS brand (
    name VARCHAR(255) PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS category (
    name VARCHAR(255) PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS type (
    name VARCHAR(255) PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS size (
    type VARCHAR(255) PRIMARY KEY 
);

CREATE TABLE IF NOT EXISTS offer (
    id SERIAL PRIMARY KEY, 
    type VARCHAR(255) DEFAULT 'Not on Offer'
);

CREATE TABLE IF NOT EXISTS location (
    id SERIAL PRIMARY KEY, 
    town VARCHAR(255) NOT NULL,
    county VARCHAR(255) NOT NULL,
    country VARCHAR(255) DEFAULT 'Ireland'
);


CREATE TABLE IF NOT EXISTS shop (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    location_id INTEGER,
    FOREIGN KEY (location_id) REFERENCES location (id)
);

CREATE TABLE IF NOT EXISTS description (
    id SERIAL PRIMARY KEY, 
    brand VARCHAR(255),
    category VARCHAR(255),
    type VARCHAR(255),
    FOREIGN KEY (brand) REFERENCES brand (name),
    FOREIGN KEY (category) REFERENCES category (name),
    FOREIGN KEY (type) REFERENCES type (name)
);

CREATE TABLE IF NOT EXISTS item (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(255),
    description_id INTEGER,
    size VARCHAR(255),
    price MONEY NOT NULL,
    transaction_id INTEGER,
    shop_id INTEGER,
    offer_id INTEGER,
    FOREIGN KEY (name) REFERENCES name (name),
    FOREIGN KEY (description_id) REFERENCES description (id),
    FOREIGN KEY (size) REFERENCES size (type),
    FOREIGN KEY (transaction_id) REFERENCES transaction (id),
    FOREIGN KEY (shop_id) REFERENCES shop (id),
    FOREIGN KEY (offer_id) REFERENCES offer (id)
);
DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL auto_increment,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price INT NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Tardis", "BBC Prop Replicas", 5000.00, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Fate Zero: Iskandar THe Kng of Conqerers", "Anime Costume Designs", 325.70, 26);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Image Comics Teenage Mutant Ninja Turtles Trade", "Comics", 15.00, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("K9 Robot Dog", "BBC Prop Replicas", 679.99, 172);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Macross Flight Suit", "Anime Costume Designs", 109.75, 1000);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Tanahassi Coates Run on Black Panther", "Comics", 35.00, 180);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("NEW Cyber-Man Deluxe costume; Resin Molded", "BBC Prop Replicas", 752.99, 42);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Whis symbol Battle Suit", "Anime Costume Designs", 85.25, 700);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("Valliant Comics Divinity Volume 1 Trade", "Comics", 25.00, 72);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("10th Doctor Sonic Screwdriver IR controller", "BBC Prop Replicas", 35.00, 500);

select * from products 


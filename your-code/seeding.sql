USE dealership;

INSERT INTO dealership.cars (vin, manufacturer, model, year_manu, color) VALUES
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");



INSERT INTO dealership.customers (customer_id, f_name, l_name, phone_number, email, city, country, zip_postal) VALUES

(10001, "Pablo Picasso", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Spain", "28045"),
(20001, "Abraham Lincoln", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "United States", "33130"),
(30001, "Napoléon Bonaparte", "+33 1 79 75 40 00", "-", "40 Rue du Colisée", "Paris", "France", "75008");

INSERT INTO dealership.salesperson (staff_id, f_name, l_name, store) VALUES
("00001", "Petey", "Cruiser", "Madrid"),
("00002", "Anna", "Sthesia", "Barcelona"),
("00003", "Paul", "Molive", "Berlin"),
("00004", "Gail", "Forcewind", "Paris"),
("00005", "Paige", "Turner", "Mimia"),
("00006", "Bob", "Frapples", "Mexico City"),
("00007", "Walter", "Melon", "Amsterdam"),
("00008", "Shonda", "Leer", "São Paulo");

INSERT INTO dealership.invoices (invoice_nr, date, vin, customer_id, staff_id) VALUES

(852399038, "2018-08-22", "3K096I98581DHSNUP", 20001, 00004),
(731166526, "2018-12-31", "HKNDGS7CU31E9Z7JW", 10001, 00006),
(271135104, "2019-01-22", "RKXVNNIHLVVZOUB4M", 30001, 00008);
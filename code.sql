CREATE TABLE customer (
    cust_id INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    contact VARCHAR(20),
    age INT,
    CNIC VARCHAR(20)
);

INSERT INTO customer VALUES (1, 'John', 'Doe', '1234567890', 30, '12345-67890');
INSERT INTO customer VALUES (2, 'Jane', 'Smith', '9876543210', 25, '67890-12345');
INSERT INTO customer VALUES (3, 'Alice', 'Brown', '1122334455', 28, '98765-43210');
INSERT INTO customer VALUES (4, 'Bob', 'Miller', '2233445566', 35, '54321-09876');
INSERT INTO customer VALUES (5, 'Charlie', 'Davis', '3344556677', 40, '11223-33445');
INSERT INTO customer VALUES (6, 'David', 'Wilson', '4455667788', 22, '66778-88990');
INSERT INTO customer VALUES (7, 'Eve', 'Johnson', '5566778899', 29, '99001-12233');
INSERT INTO customer VALUES (8, 'Frank', 'White', '6677889900', 45, '22334-44556');
INSERT INTO customer VALUES (9, 'Grace', 'Thomas', '7788990011', 33, '55667-77889');
INSERT INTO customer VALUES (10, 'Henry', 'Hall', '8899001122', 50, '88990-00112');

CREATE TABLE train_service (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    distance INT,
    no_of_seats INT,
    route_id INT
);

INSERT INTO train_service VALUES (1, 'Express A', 500, 100, 1);
INSERT INTO train_service VALUES (2, 'Express B', 600, 120, 2);
INSERT INTO train_service VALUES (3, 'Express C', 700, 150, 3);
INSERT INTO train_service VALUES (4, 'Express D', 800, 180, 4);
INSERT INTO train_service VALUES (5, 'Express E', 900, 200, 5);
INSERT INTO train_service VALUES (6, 'Express F', 1000, 220, 6);
INSERT INTO train_service VALUES (7, 'Express G', 1100, 250, 7);
INSERT INTO train_service VALUES (8, 'Express H', 1200, 300, 8);
INSERT INTO train_service VALUES (9, 'Express I', 1300, 350, 9);
INSERT INTO train_service VALUES (10, 'Express J', 1400, 400, 10);

CREATE TABLE route (
    route_id INT PRIMARY KEY,
    source VARCHAR(50),
    destination VARCHAR(50)
);

INSERT INTO route VALUES (1, 'City A', 'City B');
INSERT INTO route VALUES (2, 'City C', 'City D');
INSERT INTO route VALUES (3, 'City E', 'City F');
INSERT INTO route VALUES (4, 'City G', 'City H');
INSERT INTO route VALUES (5, 'City I', 'City J');
INSERT INTO route VALUES (6, 'City K', 'City L');
INSERT INTO route VALUES (7, 'City M', 'City N');
INSERT INTO route VALUES (8, 'City O', 'City P');
INSERT INTO route VALUES (9, 'City Q', 'City R');
INSERT INTO route VALUES (10, 'City S', 'City T');


CREATE TABLE ticket (
    ticket_id INT PRIMARY KEY,
    passenger_name VARCHAR(50),
    date DATE,
    train_id INT
);

INSERT INTO ticket VALUES (1, 'John Doe', '2025-01-01', 1);
INSERT INTO ticket VALUES (2, 'Jane Smith', '2025-01-02', 2);
INSERT INTO ticket VALUES (3, 'Alice Brown', '2025-01-03', 3);
INSERT INTO ticket VALUES (4, 'Bob Miller', '2025-01-04', 4);
INSERT INTO ticket VALUES (5, 'Charlie Davis', '2025-01-05', 5);
INSERT INTO ticket VALUES (6, 'David Wilson', '2025-01-06', 6);
INSERT INTO ticket VALUES (7, 'Eve Johnson', '2025-01-07', 7);
INSERT INTO ticket VALUES (8, 'Frank White', '2025-01-08', 8);
INSERT INTO ticket VALUES (9, 'Grace Thomas', '2025-01-09', 9);
INSERT INTO ticket VALUES (10, 'Henry Hall', '2025-01-10', 10);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    type VARCHAR(20),
    amount DECIMAL(10,2),
    received DECIMAL(10,2),
    returned DECIMAL(10,2),
    ticket_id INT
);

INSERT INTO payment VALUES (1, 'Credit Card', 1000.00, 1000.00, 0.00, 1);
INSERT INTO payment VALUES (2, 'Debit Card', 1500.00, 1500.00, 0.00, 2);
INSERT INTO payment VALUES (3, 'Cash', 2000.00, 2000.00, 0.00, 3);
INSERT INTO payment VALUES (4, 'Mobile Payment', 2500.00, 2500.00, 0.00, 4);
INSERT INTO payment VALUES (5, 'UPI', 3000.00, 3000.00, 0.00, 5);
INSERT INTO payment VALUES (6, 'Credit Card', 1200.00, 1200.00, 0.00, 6);
INSERT INTO payment VALUES (7, 'Debit Card', 1800.00, 1800.00, 0.00, 7);
INSERT INTO payment VALUES (8, 'Cash', 2200.00, 2200.00, 0.00, 8);
INSERT INTO payment VALUES (9, 'Mobile Payment', 2700.00, 2700.00, 0.00, 9);
INSERT INTO payment VALUES (10, 'UPI', 3200.00, 3200.00, 0.00, 10);

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    type VARCHAR(20),
    fare DECIMAL(10,2)
);

INSERT INTO classes VALUES (1, 'Economy', 500.00);
INSERT INTO classes VALUES (2, 'Business', 1000.00);
INSERT INTO classes VALUES (3, 'First Class', 1500.00);
INSERT INTO classes VALUES (4, 'Sleeper', 2000.00);
INSERT INTO classes VALUES (5, 'AC Sleeper', 2500.00);
INSERT INTO classes VALUES (6, 'Chair Car', 1200.00);
INSERT INTO classes VALUES (7, 'General', 300.00);
INSERT INTO classes VALUES (8, 'Luxury', 3500.00);
INSERT INTO classes VALUES (9, 'VIP', 5000.00);
INSERT INTO classes VALUES (10, 'Super VIP', 7000.00);

CREATE TABLE train_operator (
    operator_id INT PRIMARY KEY,
    operator_name VARCHAR(50),
    contact VARCHAR(20),
    country VARCHAR(50),
    category VARCHAR(20)
);

INSERT INTO train_operator VALUES (1, 'National Rail', '1234567890', 'USA', 'Public');
INSERT INTO train_operator VALUES (2, 'Metro Express', '9876543210', 'UK', 'Private');
INSERT INTO train_operator VALUES (3, 'EuroRail', '1122334455', 'France', 'Public');
INSERT INTO train_operator VALUES (4, 'Asian Railways', '2233445566', 'India', 'Government');
INSERT INTO train_operator VALUES (5, 'Bullet Trains Ltd', '3344556677', 'Japan', 'Private');
INSERT INTO train_operator VALUES (6, 'Maglev Corp', '4455667788', 'China', 'Public');
INSERT INTO train_operator VALUES (7, 'Speed Trains Inc', '5566778899', 'Germany', 'Private');
INSERT INTO train_operator VALUES (8, 'Express Rail', '6677889900', 'Canada', 'Public');
INSERT INTO train_operator VALUES (9, 'Subway Services', '7788990011', 'Australia', 'Government');
INSERT INTO train_operator VALUES (10, 'Trans Europe', '8899001122', 'Netherlands', 'Public');

You have already created the base tables. Now, I will **add relationships** between the tables based on the project details. Additionally, I will suggest any necessary attribute modifications if needed.  

---

### Necessary Attribute Modifications
To maintain referential integrity and relationships, I suggest the following changes:

1. Modify `ticket` table to include a reference to the customer who booked the ticket:
   ```sql
   ALTER TABLE ticket ADD COLUMN cust_id INT;
   ```
2. **Modify `payment` table** to ensure all payments are linked to tickets:
   ```sql
   ALTER TABLE payment MODIFY ticket_id INT NOT NULL;
   ```
3. **Modify `train_service` table** to include a reference to the train operator:
   ```sql
   ALTER TABLE train_service ADD COLUMN operator_id INT;
   ```
4. **Modify `classes` table** to ensure a class belongs to a specific train service:
   ```sql
   ALTER TABLE classes ADD COLUMN train_id INT;
   ```

---


#Establishing Relationships (Foreign Keys)
Here is the SQL code to create relationships between the tables:

```sql
-- Establish Relationship between train_service and route
ALTER TABLE train_service
ADD CONSTRAINT fk_train_route FOREIGN KEY (route_id) REFERENCES route(route_id) ON DELETE SET NULL;

-- Establish Relationship between train_service and train_operator
ALTER TABLE train_service
ADD CONSTRAINT fk_train_operator FOREIGN KEY (operator_id) REFERENCES train_operator(operator_id) ON DELETE SET NULL;

-- Establish Relationship between ticket and train_service
ALTER TABLE ticket
ADD CONSTRAINT fk_ticket_train FOREIGN KEY (train_id) REFERENCES train_service(train_id) ON DELETE CASCADE;

-- Establish Relationship between ticket and customer
ALTER TABLE ticket
ADD CONSTRAINT fk_ticket_customer FOREIGN KEY (cust_id) REFERENCES customer(cust_id) ON DELETE CASCADE;

-- Establish Relationship between payment and ticket
ALTER TABLE payment
ADD CONSTRAINT fk_payment_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE;

-- Establish Relationship between classes and train_service
ALTER TABLE classes
ADD CONSTRAINT fk_classes_train FOREIGN KEY (train_id) REFERENCES train_service(train_id) ON DELETE CASCADE;


-----
UPDATE ticket SET cust_id = 1 WHERE ticket_id = 1;
UPDATE ticket SET cust_id = 2 WHERE ticket_id = 2;
UPDATE ticket SET cust_id = 3 WHERE ticket_id = 3;
UPDATE ticket SET cust_id = 4 WHERE ticket_id = 4;
UPDATE ticket SET cust_id = 5 WHERE ticket_id = 5;
UPDATE ticket SET cust_id = 6 WHERE ticket_id = 6;
UPDATE ticket SET cust_id = 7 WHERE ticket_id = 7;
UPDATE ticket SET cust_id = 8 WHERE ticket_id = 8;
UPDATE ticket SET cust_id = 9 WHERE ticket_id = 9;
UPDATE ticket SET cust_id = 10 WHERE ticket_id = 10;

-----

UPDATE payment SET ticket_id = 1 WHERE payment_id = 1;
UPDATE payment SET ticket_id = 2 WHERE payment_id = 2;
UPDATE payment SET ticket_id = 3 WHERE payment_id = 3;
UPDATE payment SET ticket_id = 4 WHERE payment_id = 4;
UPDATE payment SET ticket_id = 5 WHERE payment_id = 5;
UPDATE payment SET ticket_id = 6 WHERE payment_id = 6;
UPDATE payment SET ticket_id = 7 WHERE payment_id = 7;
UPDATE payment SET ticket_id = 8 WHERE payment_id = 8;
UPDATE payment SET ticket_id = 9 WHERE payment_id = 9;
UPDATE payment SET ticket_id = 10 WHERE payment_id = 10;

-----
UPDATE train_service SET operator_id = 1 WHERE train_id = 1;
UPDATE train_service SET operator_id = 2 WHERE train_id = 2;
UPDATE train_service SET operator_id = 3 WHERE train_id = 3;
UPDATE train_service SET operator_id = 4 WHERE train_id = 4;
UPDATE train_service SET operator_id = 5 WHERE train_id = 5;
UPDATE train_service SET operator_id = 6 WHERE train_id = 6;
UPDATE train_service SET operator_id = 7 WHERE train_id = 7;
UPDATE train_service SET operator_id = 8 WHERE train_id = 8;
UPDATE train_service SET operator_id = 9 WHERE train_id = 9;
UPDATE train_service SET operator_id = 10 WHERE train_id = 10;
-----
UPDATE classes SET train_id = 1 WHERE class_id = 1;
UPDATE classes SET train_id = 2 WHERE class_id = 2;
UPDATE classes SET train_id = 3 WHERE class_id = 3;
UPDATE classes SET train_id = 4 WHERE class_id = 4;
UPDATE classes SET train_id = 5 WHERE class_id = 5;
UPDATE classes SET train_id = 6 WHERE class_id = 6;
UPDATE classes SET train_id = 7 WHERE class_id = 7;
UPDATE classes SET train_id = 8 WHERE class_id = 8;
UPDATE classes SET train_id = 9 WHERE class_id = 9;
UPDATE classes SET train_id = 10 WHERE class_id = 10;

-- Create the "client" table
CREATE TABLE client (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Insert data into the "client" table
INSERT INTO client (id, name, email, phone)
VALUES
    (1, 'Alice Martin', 'alice.martin@example.com', '123-456-7890'),
    (2, 'Bob Johnson', 'bob.johnson@example.com', '234-567-8901'),
    (3, 'Catherine Davis', 'catherine.davis@example.com', '345-678-9012');

-- Create the "event" table
CREATE TABLE event (
    id INT PRIMARY KEY,
    client_id INT,
    type VARCHAR(100),
    date DATE,
    FOREIGN KEY (client_id) REFERENCES client(id)
);

-- Insert data into the "event" table
INSERT INTO event (id, client_id, type, date)
VALUES
    (101, 1, 'Wedding', '2024-08-12'),
    (102, 2, 'Conference', '2024-09-15'),
    (103, 3, 'Birthday Party', '2024-10-05');

-- Create the "payment" table
CREATE TABLE payment (
    id INT PRIMARY KEY,
    client_id INT,
    amount DECIMAL(10, 2),
    date DATE,
    FOREIGN KEY (client_id) REFERENCES client(id)
);

-- Insert data into the "payment" table
INSERT INTO payment (id, client_id, amount, date)
VALUES
    (1001, 1, 5000.00, '2024-08-01'),
    (1002, 2, 3000.00, '2024-09-05'),
    (1003, 3, 1500.00, '2024-09-30');

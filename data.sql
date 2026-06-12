INSERT INTO customers VALUES
(1,'shiva','hyd'),
(2,'rahul','goa'),
(3,'priya','pune');

INSERT INTO products VALUES
(101,'laptop',70000),
(102,'cooler',10000),
(103,'earbuds',2000);

INSERT INTO orders VALUES
(1001,1,'2026-02-01'),
(1002,2,'2026-02-15'),
(1003,3,'2026-05-16');

DROP TABLE order_items;

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1002, 102, 2),
(3, 1003, 102, 1),
(4, 1003, 103, 3);
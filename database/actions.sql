START TRANSACTION;
INSERT INTO transactions(sale_date, salesperson, customer) VALUES (NOW(), ?, ?);
SET @TRANS_ID = LAST_INSERT_ID();
SET @PRODUCT_ID = ?;
SET @PURCHASE_AMOUNT = ?;
SELECT id, amount FROM products WHERE id in ();
SELECT amount, price INTO @INVENTORY, @PRICE FROM products WHERE id=@PRODUCT_ID FOR UPDATE;
UPDATE products SET amount = amount - ? WHERE id = ?;
INSERT INTO product_transactions(`transaction`, product, price, amount) VALUES ();
SELECT * FROM transactions WHERE id = @TRANS_ID;
COMMIT;


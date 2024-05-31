INSERT INTO restaurant_project.customer (Customer_id, Customer_Name, CPhone_Number, CEmail, CAddress)
VALUES
    (1, 'John Doe', '123-456-7890', 'johndoe@example.com', '123 Main St'),
    (2, 'Jane Smith', '555-555-5555', 'janesmith@example.com', '456 Elm St'),
    (3, 'Bob Johnson', '999-999-9999', 'bob@example.com', '789 Oak St'),
    (4, 'Alice Brown', '111-111-1111', 'alice@example.com', '456 Maple St'),
    (5, 'Tom Wilson', '222-222-2222', 'tom@example.com', '789 Pine St'),
    (6, 'Samantha Lee', '333-333-3333', 'samantha@example.com', '123 Cedar St');

INSERT INTO restaurant_project.restaurant (Restaurant_id, Restaurant_Name, RPhone_Number, REmail, RAddress)
VALUES
    (1, 'The Best Burger', '123-456-7890', 'info@thebestburger.com', '456 Main St'),
    (2, 'Pizza Palace', '555-555-5555', 'contact@pizzapalace.com', '789 Elm St'),
    (3, 'Taco Time', '999-999-9999', 'info@tacotime.com', '123 Oak St');
    
INSERT INTO restaurant_project.kitchen_station (KStation_id, KS_Name, Restaurant_id)
VALUES
    (1, 'Grill Station', 1),
    (2, 'Pizza Station', 2),
    (3, 'Taco Station', 3);

INSERT INTO restaurant_project.employee (Employee_id, Employee_Name, EPhone_Number, EEmail, EAddress, Role, Salary, KStation_id, Restaurant_id)
VALUES
    -- Restaurant 1
    (1, 'John Smith', '123-456-7890', 'john.smith@restaurant1.com', '123 Main St', 'Manager', 50000, NULL, 1),
    (2, 'Jane Doe', '555-555-5555', 'jane.doe@restaurant1.com', '456 Elm St', 'Server', 20000, NULL, 1),
    (3, 'Samantha Brown', '999-999-9999', 'samantha.brown@restaurant1.com', '789 Oak St', 'Chef', 60000, 1, 1),
    (4, 'Michael Johnson', '111-111-1111', 'michael.johnson@restaurant1.com', '1010 Broad St', 'Host', 18000, NULL, 1),
    (5, 'Sarah Lee', '222-222-2222', 'sarah.lee@restaurant1.com', '1313 5th Ave', 'Chef', 60000, 2, 1),
    (6, 'Peter Green', '333-333-3333', 'peter.green@restaurant1.com', '1212 6th Ave', 'Chef', 60000, 3, 1),
    (7, 'Alex Davis', '444-444-4444', 'alex.davis@restaurant2.com', '222 Main St', 'Manager', 50000, NULL, 1),
    (8, 'Emily Wilson', '777-777-7777', 'emily.wilson@restaurant2.com', '333 Elm St', 'Server', 20000, NULL, 1),
    (9, 'Olivia Lee', '999-999-9999', 'olivia.lee@restaurant2.com', '555 Broad St', 'Host', 18000, NULL, 1),
    (10, 'Jessica Smith', '666-666-6666', 'jessica.smith@restaurant3.com', '444 Elm St', 'Server', 20000, NULL, 1);
 
INSERT INTO restaurant_project.table_zone (Zone_id, Zone_Name, Restaurant_id)
VALUES
    -- Restaurant 1
    (1, 'Zone 1', 1),
    (2, 'Zone 2', 1),
    (3, 'Zone 3', 1);

INSERT INTO restaurant_project.`Table` (Table_id, Zone_id, Employee_id, Seats, TStatus)
VALUES
    (1, 1, 1, 4, 'Available'),
    (2, 1, 2, 2, 'Available'),
    (3, 1, 3, 6, 'Occupied'),
    (4, 2, 4, 4, 'Available'),
    (5, 2, 5, 2, 'Occupied'),
    (6, 2, 7, 6, 'Available'),
    (7, 3, 6, 4, 'Available'),
    (8, 3, 8, 2, 'Available'),
    (9, 3, 9, 6, 'Available');
    
INSERT INTO restaurant_project.reservation (Reservation_id, Customer_id, Restaurant_id, Table_id, R_Date, Time, Status)
VALUES
    (1, 1, 1, 1, '2023-04-03', '18:30:00', 'Confirmed'),
    (2, 2, 1, 2, '2023-04-03', '19:00:00', 'Confirmed'),
    (3, 3, 1, 4, '2023-04-03', '19:30:00', 'Confirmed'),
    (4, 4, 1, 5, '2023-04-03', '20:00:00', 'Confirmed'),
    (5, 5, 1, 7, '2023-04-03', '20:30:00', 'Confirmed'),
    (6, 6, 1, 8, '2023-04-03', '21:00:00', 'Confirmed');
    
INSERT INTO restaurant_project.discount (Discount_id, PromoCode, Disc_Amount)
VALUES
    (1, 'SUMMER10', 10.00),
    (2, 'FALL20', 20.00),
    (3, 'WINTER30', 30.00);

INSERT INTO restaurant_project.`order` (Order_id, Table_id, Customer_id, Discount_id, Time, Status)
VALUES
    (1, 1, 1, NULL, '2023-04-02 18:00:00', 'Close'),
    (2, 2, 2, NULL, '2023-04-02 18:15:00', 'Close'),
    (3, 3, 3, NULL, '2023-04-02 18:30:00', 'Close'),
    (4, 4, 4, NULL, '2023-04-02 18:45:00', 'Close'),
    (5, 5, 5, NULL, '2023-04-02 19:00:00', 'Close'),
    (6, 6, 6, NULL, '2023-04-02 19:15:00', 'Close'),
    (7, 7, 1, 1, '2023-04-02 19:30:00', 'Open'),
    (8, 8, 2, 2, '2023-04-02 19:45:00', 'Open'),
    (9, 9, 3, 3, '2023-04-02 20:00:00', 'Open');

INSERT INTO restaurant_project.payment (Payment_id, Customer_id, Order_id, Order_Amount, Payment_Time, Payment_Method)
VALUES
    (1, 1, 1, 50.00, '2023-04-02 19:30:00', 'Cash'),
    (2, 2, 2, 35.00, '2023-04-02 20:00:00', 'Credit Card'),
    (3, 3, 3, 75.00, '2023-04-02 20:30:00', 'Debit Card'),
    (4, 4, 4, 42.00, '2023-04-02 21:00:00', 'Others');
    
INSERT INTO restaurant_project.feedback (Feedback_id, Customer_id, Restaurant_id, Rating, Comment)
VALUES
    (1, 1, 1, 4, 'The food was great, but the service could have been better.'),
    (2, 2, 1, 5, 'The pizza was amazing, and the service was top-notch!'),
    (3, 3, 1, 3, 'The tacos were average, and the service was slow.'),
    (4, 4, 1, 5, 'The burgers were delicious, and the service was friendly.'),
    (5, 5, 1, 4, 'The pasta was good, but the service was a bit slow.'),
    (6, 6, 1, 2, 'The food was terrible, and the service was rude.');
    
INSERT INTO restaurant_project.menu_item (MItem_id, MName, Price, Description) VALUES
(1, 'Classic Burger', 8.99, 'A juicy beef patty topped with lettuce, tomato, onion, and pickles'),
(2, 'Chicken Caesar Salad', 10.99, 'Romaine lettuce, grilled chicken, croutons, and Parmesan cheese'),
(3, 'Margherita Pizza', 12.99, 'Tomato sauce, fresh mozzarella, and basil on a thin crust'),
(4, 'BBQ Ribs Pasta', 16.99, 'Slow-cooked and basted in our signature BBQ sauce'),
(5, 'Fish and Chips Sides', 14.99, 'Beer-battered cod served with fries and tartar sauce'),
(6, 'Spaghetti Bolognese Pasta', 11.99, 'Spaghetti with a meaty tomato sauce and Parmesan cheese'),
(7, 'Avacado Burger', 10.99, 'Tasty burger with avocado and spicy sauce'),
(8, 'Healthy Salad', 9.99, 'Healthy salad with mixed greens and veggies'),
(9, 'Chicken Quinoa Salad', 11.99, 'Fresh salad with grilled chicken and quinoa'),
(10, 'Classic Pizza', 12.99, 'Classic pizza with pepperoni and mushrooms'),
(11, 'Gourmet pizza', 13.99, 'Gourmet pizza with prosciutto and arugula'),
(12, 'Traditional pasta', 11.99, 'Traditional pasta with meat sauce'),
(13, 'French Fries Sides', 3.99, 'Crispy french fries'),
(14, 'Onion Rings Sides', 4.99, 'Golden Onion Rings'),
(15, 'Soda Drink', 2.99, 'Refreshing soda'),
(16, 'Lemon Tea Drink', 3.99, 'Iced tea with lemon');

INSERT INTO restaurant_project.food_category (Category_id, FCName) VALUES
(1, 'Burger'),
(2, 'Salad'),
(3, 'Pizza'),
(4, 'Drink'),
(5, 'Sides'),
(6, 'Pasta');

INSERT INTO restaurant_project.ingredient (Ingredient_id, IName, Unit, Cost) VALUES
(1, 'Ground Beef', 'lb', 3.99),
(2, 'Chicken Breast', 'lb', 4.99),
(3, 'Romaine Lettuce', 'head', 1.99),
(4, 'Tomatoes', 'lb', 2.99),
(5, 'Onions', 'lb', 1.49),
(6, 'Pickles', 'jar', 2.49),
(7, 'Pizza Dough', 'lb', 2.99),
(8, 'Mozzarella Cheese', 'lb', 5.99),
(9, 'Basil', 'bunch', 1.99),
(10, 'Pork Ribs', 'lb', 5.99),
(11, 'Cod Fillets', 'lb', 7.99),
(12, 'Potatoes', 'lb', 0.99),
(13, 'Flour', 'lb', 1.99),
(14, 'Tomato Sauce', 'can', 1.49),
(15, 'Ground Pork', 'lb', 2.99);

INSERT INTO restaurant_project.supplier (Supplier_id, Supplier_Name, SPhone_Number, SEmail, SAddress) VALUES
(1, 'FreshMeat Inc.', '555-1234', 'info@freshmeat.com', '123 Main St'),
(2, 'Greens Galore', '555-5678', 'info@greensgalore.com', '456 Elm St'),
(3, 'Pizzaiolo Supplies', '555-9999', 'info@pizzaiolosupplies.com', '789 Oak St');

INSERT INTO restaurant_project.purchase_order (PurchaseOrder_id, PO_Date, Restaurant_id, Employee_id, Supplier_id) VALUES
(1, '2023-04-03', 1, 1, 1),
(2, '2023-04-03', 1, 7, 2),
(3, '2023-04-03', 1, 1, 3);

INSERT INTO restaurant_project.purchase_item (PurchaseItem_id, Ingredient_id, Quantity, PI_Amount) 
VALUES 
(1, 2, 5, 10.50),
(2, 1, 2, 6.00),
(3, 3, 3, 8.25),
(4, 4, 1, 3.50),
(5, 5, 4, 12.00),
(6, 6, 2, 7.00),
(7, 7, 3, 9.75),
(8, 8, 1, 4.00),
(9, 9, 4, 11.50),
(10, 10, 2, 6.00),
(11, 11, 3, 8.25),
(12, 12, 1, 3.50),
(13, 13, 4, 12.00),
(14, 14, 2, 7.00),
(15, 15, 3, 9.75);

INSERT INTO restaurant_project.Employee_Order (Employee_id, Order_id, EO_Date) 
VALUES 
(1, 1, '2023-04-02'), 
(2, 1, '2023-04-02'), 
(3, 2, '2023-04-02');

INSERT INTO restaurant_project.Order_Menu (Order_id, MItem_id)
VALUES 
(1, 1), 
(1, 2), 
(2, 3);

INSERT INTO restaurant_project.MenuItem_Ingredients (MItem_id, Ingredient_id)
VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(3, 4);

INSERT INTO restaurant_project.MenuItem_Category (MItem_id, Category_id)
VALUES 
(1, 1), 
(2, 2), 
(3, 3);

INSERT INTO restaurant_project.Supplier_Ingredients (Supplier_id, Ingredient_id)
VALUES 
(1, 1), 
(1, 2), 
(2, 3), 
(3, 4);

INSERT INTO restaurant_project.PurchaseOrder_Items (PurchaseOrder_id, PurchaseItem_id, PStatus)
VALUES 
(1, 1, 'Ordered'), 
(1, 2, 'Delivered'), 
(2, 3, 'Ordered');

INSERT INTO restaurant_project.SupplierPurchase_Order (Supplier_id, PurchaseOrder_id)
VALUES 
(1, 1), 
(2, 2), 
(3, 3);













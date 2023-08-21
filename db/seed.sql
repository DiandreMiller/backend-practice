\c cart_dev;

INSERT INTO stores (store_name, store_address, store_zip_code, store_city, store_image, store_hours, store_phone_number, accepts_ebt)
VALUES
    ('Grocery Mart', '123 Main St', 12345, 'Cityville', 'image1.jpg', 'Mon-Fri: 8am-10pm, Sat-Sun: 9am-9pm', '123-456-7890', true),
    ('Fresh Foods', '456 Elm Ave', 67890, 'Townsville', 'image2.jpg', 'Mon-Sun: 7am-11pm', '987-654-3210', true),
    ('Super Savers', '789 Oak Blvd', 54321, 'Villagetown', 'image3.jpg', 'Mon-Sat: 9am-8pm, Sun: 10am-6pm', '555-123-4567', true),
    ('Discount Groceries', '234 Maple Ln', 98765, 'Hamletsville', 'image4.jpg', 'Mon-Thu: 10am-7pm, Fri: 10am-8pm, Sat-Sun: 9am-6pm', '777-888-9999', false),
    ('Quick Mart', '567 Pine Rd', 34567, 'Countryside', 'image5.jpg', 'Mon-Sun: 24 hours', '444-555-6666', true),
    ('Neighborhood Market', '890 Cedar Street', 23456, 'Suburbia', 'image6.jpg', 'Mon-Fri: 9am-9pm, Sat: 10am-8pm, Sun: 11am-6pm', '222-333-4444', true),
    ('Budget Grocers', '1234 Birch Ave', 12345, 'Cityville', 'image7.jpg', 'Mon-Sun: 8am-10pm', '888-999-0000', true),
    ('Local Foods', '4567 Oak Lane', 67890, 'Townsville', 'image8.jpg', 'Mon-Sat: 7am-9pm, Sun: 8am-8pm', '777-777-7777', false),
    ('Value Mart', '7890 Elm Street', 54321, 'Villagetown', 'image9.jpg', 'Mon-Sun: 9am-7pm', '666-666-6666', true),
    ('Everyday Groceries', '2345 Maple Avenue', 98765, 'Hamletsville', 'image10.jpg', 'Mon-Fri: 10am-8pm, Sat-Sun: 10am-6pm', '555-444-3333', true);

INSERT INTO products (product_name, store_id, product_price, product_weight, product_unit, is_organic, product_category, product_brand, product_description, product_image, is_vegetarian, is_frozen, is_fresh, is_non_processed, is_in_stock, allergens, is_kosher, is_halal, special_diet, health_label, certification, product_discount)
VALUES
    ('Organic Apples', 1, 2.99, 1.5, 'lbs', true, 'Fruits', 'Nature's Best', 'Fresh organic apples from local orchards.', 'apple.jpg', true, false, true, true, true, 'None', true, false, 'Gluten-Free', 'Low Calorie', 'USDA Organic', 0.10),
    ('Frozen Pizza', 2, 5.99, 0.75, 'lbs', false, 'Frozen Foods', 'Quick Bites', 'Classic pepperoni frozen pizza.', 'pizza.jpg', false, true, false, false, true, 'Contains Dairy', false, true, 'None', 'High Protein', 'N/A', 0.20),
    ('Organic Spinach', 3, 3.49, 0.25, 'lbs', true, 'Vegetables', 'Organic Greens', 'Fresh organic spinach leaves for salads and cooking.', 'spinach.jpg', true, false, true, true, true, 'None', true, false, 'Vegan', 'Low Carb', 'USDA Organic', 0.15),
    ('Cereal Bars', 4, 4.50, 0.5, 'lbs', false, 'Snacks', 'Morning Delights', 'Assorted cereal bars for a quick breakfast or snack.', 'cereal_bars.jpg', true, false, true, false, true, 'Contains Nuts', false, false, 'None', 'Fiber-Rich', 'N/A', 0.25),
    ('Fresh Salmon', 5, 9.99, 0.8, 'lbs', false, 'Seafood', 'Sea Harvest', 'Premium fresh salmon fillet for delicious meals.', 'salmon.jpg', false, false, true, true, true, 'Contains Fish', false, true, 'Pescatarian', 'Omega-3 Rich', 'Sustainably Sourced', 0.10),
    ('Sliced Bread', 6, 2.29, 1.0, 'lbs', false, 'Bakery', 'Baker's Choice', 'Freshly baked sliced bread for sandwiches and toasts.', 'bread.jpg', true, false, true, true, true, 'Contains Gluten', false, false, 'None', 'Whole Grain', 'N/A', 0.15),
    ('Greek Yogurt', 7, 3.25, 0.6, 'lbs', false, 'Dairy', 'Yogurt Delight', 'Creamy Greek yogurt with assorted fruit flavors.', 'yogurt.jpg', true, false, true, true, true, 'Contains Dairy', false, false, 'Vegetarian', 'Probiotic', 'N/A', 0.10),
    ('Frozen Mixed Vegetables', 8, 2.99, 1.0, 'lbs', false, 'Frozen Foods', 'Frosty Harvest', 'Assortment of frozen mixed vegetables for easy meal preparation.', 'frozen_vegetables.jpg', true, true, false, true, true, 'None', false, false, 'Vegan', 'High Fiber', 'N/A', 0.15),
    ('Peanut Butter', 9, 3.79, 0.5, 'lbs', false, 'Condiments', 'Nutty Spread', 'Smooth peanut butter made from high-quality peanuts.', 'peanut_butter.jpg', true, false, true, true, true, 'Contains Nuts', true, false, 'Vegetarian', 'Rich in Protein', 'Non-GMO', 0.10),
    ('Fresh Oranges', 10, 4.99, 2.0, 'lbs', false, 'Fruits', 'Citrus Grove', 'Juicy and refreshing fresh oranges.', 'oranges.jpg', true, false, true, true, true, 'None', false, false, 'Vegan', 'Vitamin C-Rich', 'N/A', 0.10);

    
-- INSERT INTO products (product_name, store_id, product_price, product_weight, product_unit, is_organic, product_category, product_brand, product_description, product_image, is_vegetarian, is_frozen, is_fresh, is_non_processed, is_in_stock, allergens, is_kosher, is_halal, special_diet, health_label, certification, product_discount ) VALUES
--   ('Milk', 1, 'Dairy', 'https://www.foodsafetynews.com/files/2021/06/illustration-milk-in-glass.jpg', 'Low-fat-Milk', 4.99, 1, 'Gallon', false),
--   ('Apple', 'Fruits', 'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg', 'fresh',  2.99, 2, 'pound', false),
--   ('Potatoes', 'Vegetables', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN6TKHj0G_rMVbSRmTrhKhCEa22c2qy4lVzjCayANR2g&s', 'tuber-round-oval', 2.29, 10, 'pound', true),
--   ('Bread Loaf', 'Bakery', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ-Tq7ywHXRBUVW9lOBYw0XuYTj_WsOzlpTnc6ZKzQ5vTQAE7xA1Uk38B-DCWw3HQEVU1t9RK3j', '21 Whole Grains', 5.99, 1, 'oz', true),
--   ('Beef Steak', 'Meat', 'https://assets.kansascitysteaks.com/dyn-images/pdp_hero/TBone_Prime_Raw_SU07-b3250c1962c455e6e20b6debcf6d6678.jpg', 'USDA Prime T_bone Steak', 7.99, 1, 'pound', false),
--   ('Pepsi', 'Beverages', 'https://m.media-amazon.com/images/I/41b4770tmqL._PIbundle-24,TopRight,0,0_SX273SY500SH20_.jpg', 'Zero-Sugar', 27, 24, 'oz', false),
--   ('Coke', '', '', '', 0.99, 1, '',true),
--   ('Orange Juice', 'Beverages', 'OJ', 'https://m.media-amazon.com/images/I/71Ro1a9iH3L.jpg', 0.99, 1, '',true),
--   ('Muffins', 'Bakery', 'https://fitfoodiefinds.com/wp-content/uploads/2019/02/muffins-3.jpg', '', 0.99, 1, '',true),
--   ('Lays', 'Snacks', 'https://cdn.shopify.com/s/files/1/0413/1107/6505/products/05082032-2ace6c-1650x1650_1024x.jpg?v=1597662771', '', 0.99, 1, '',false),
--   ('Mangoes', '', 'https://c8.alamy.com/comp/2A0XJFT/isolated-mango-two-yellow-mango-fruit-hanging-on-a-tree-branch-isolated-on-white-background-with-clipping-path-2A0XJFT.jpg', '', 36, 12, '',false),
--   ('Spinach', 'Vegetables','https://cdn.britannica.com/30/82530-050-79911DD4/Spinach-leaves-vitamins-source-person.jpg','',0.99,1,'',true),
--   ('Almond milk', 'Dairy','https://cdn.shopify.com/s/files/1/0415/3455/4270/products/003042.jpg?v=1605755110','',5.99,2,'Gallon',true),
--   ('Cashew milk', 'Dairy','https://silk.com/wp-content/uploads/2019/02/silk-unsweet-cashewmilk-2.png','',5.99,2,'Gallon',true);



INSERT INTO reviews (groceries_id, reviewer, title, content, rating )
VALUES
(1, 'Evan', 'My Favorite', 'This website crushes it when it comes to awesome explanations', 3),
(2, 'Evan', 'My Favorite', 'This website crushes it when it comes to inspiring me', 3),
(3, 'Evan', 'My Least Favorite', 'This website crushes it when it comes to destroying my patience', 5),
(5, 'Juliana', 'I Love Going Here', 'I finally got some good organic Vegetables', 5),
(6, 'David', 'Cool Site', 'But I got way into adding organic product everywhere', 1),
(2, 'Mr. Mingo', 'So Helpful', 'I got some awesome recommendations for good products', 3),
(4, 'Alison', 'A lifesaver!','Helped me get what i need', 4),
(4, 'Hannah', 'Insert Confetti Emoji Here', 'css looks good!', 4),
(3, 'Gabi', 'My Friend Hannah', 'Gets a discount if I leave a positive review, so here it is', 5);
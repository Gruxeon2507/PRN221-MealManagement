-- Inserting data into the users table
INSERT INTO [users] ([username], [password], [email], [role]) 
VALUES 
('john_doe', 'password123', 'john@example.com', 'admin'),
('jane_doe', 'securepass', 'jane@example.com', 'user');

-- Inserting data into the recipes table
INSERT INTO [recipes] ([name]) 
VALUES 
('Spaghetti Carbonara'),
('Chicken Stir-Fry');

-- Inserting data into the ingredients table
INSERT INTO [ingredients] ([name], [price]) 
VALUES 
('Spaghetti', 2),
('Eggs', 1),
('Bacon', 3),
('Parmesan Cheese', 2),
('Chicken Breast', 5),
('Bell Pepper', 1),
('Onion', 0.5);

-- Inserting data into the recipes_ingredients table
INSERT INTO [recipes_ingredients] ([recipeId], [ingredientId], [amount]) 
VALUES 
(1, 1, 200), -- 200 grams of spaghetti for Spaghetti Carbonara
(1, 2, 2),   -- 2 eggs for Spaghetti Carbonara
(1, 3, 100), -- 100 grams of bacon for Spaghetti Carbonara
(1, 4, 50),  -- 50 grams of Parmesan cheese for Spaghetti Carbonara
(2, 5, 300), -- 300 grams of chicken breast for Chicken Stir-Fry
(2, 6, 1),   -- 1 bell pepper for Chicken Stir-Fry
(2, 7, 1);   -- 1 onion for Chicken Stir-Fry

-- Inserting data into the meals table
INSERT INTO [meals] ([message], [createdBy], [userId]) 
VALUES 
( 'Lunch with friends', '2024-03-22', 1), -- Assuming user with ID 1 is creating this meal
( 'Family dinner', '2024-03-23', 2);      -- Assuming user with ID 2 is creating this meal

-- Inserting data into the meals_recipes table
INSERT INTO [meals_recipes] ([mealId], [recipeId]) 
VALUES 
(1, 1), -- Spaghetti Carbonara for lunch with friends
(2, 2); -- Chicken Stir-Fry for family dinner

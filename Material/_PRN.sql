CREATE DATABASE [PRN221_MealManagement]
GO

USE [PRN221_MealManagement]
GO

CREATE TABLE [users] (
  [id] integer PRIMARY KEY IDENTITY,
  [username] nvarchar(255),
  [password] nvarchar(255),
  [email] nvarchar(255),
  [role] nvarchar(255),
)
GO

CREATE TABLE [recipes] (
  [id] integer PRIMARY KEY IDENTITY,
  [name] nvarchar(255)
)
GO

CREATE TABLE [ingredients] (
  [id] integer PRIMARY KEY IDENTITY,
  [name] nvarchar(255),
  [price] integer
)
GO

CREATE TABLE [recipes_ingredients] (
  [id] integer PRIMARY KEY IDENTITY,
  [recipeId] integer,
  [ingredientId] integer,
  [amount] integer
)
GO

CREATE TABLE [meals] (
  [id] integer PRIMARY KEY IDENTITY,
  [date] datetime,
  [createdBy] integer
)
GO

CREATE TABLE [meals_recipes] (
  [id] integer PRIMARY KEY IDENTITY,
  [recipeId] integer,
  [mealId] integer
)
GO

ALTER TABLE [meals] ADD FOREIGN KEY ([createdBy]) REFERENCES [users] ([id])
GO

ALTER TABLE [meals_recipes] ADD FOREIGN KEY ([mealId]) REFERENCES [meals] ([id])
GO

ALTER TABLE [meals_recipes] ADD FOREIGN KEY ([recipeId]) REFERENCES [recipes] ([id])
GO

ALTER TABLE [recipes_ingredients] ADD FOREIGN KEY ([recipeId]) REFERENCES [recipes] ([id])
GO

ALTER TABLE [recipes_ingredients] ADD FOREIGN KEY ([ingredientId]) REFERENCES [ingredients] ([id])
GO

using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Pages.Statistic
{
    public class IndexModel : PageModel
    {
        public int NoUser { get; set; }

        public readonly PRN221_MealManagementContext _context;
        public int AverageMealCost { get; set; }
        public int AverageCalories { get; set; }
        public List<Models.Recipe> Top5Recipes { get; set; }
        public List<Models.Ingredient> Top5Ingredients { get; set; }
        public IndexModel(PRN221_MealManagementContext context)
        {
            _context = context;
        }
        public void OnGet()
        {
            // Count the number of users
            NoUser = _context.Users.Count();

            // Calculate average meal cost and calories
            int numberOfMeal = _context.Meals.Count();
            int totalCost = _context.RecipesIngredients
                .Where(ri => ri.Ingredient.Price != null && ri.Amount != null)
                .Sum(ri => ri.Amount.Value * ri.Ingredient.Price.Value);
            int totalCalories = _context.RecipesIngredients
                .Where(ri => ri.Ingredient.Calories != null)
                .Sum(ri => ri.Ingredient.Calories.Value);

            AverageMealCost = totalCost > 0 ? totalCost / numberOfMeal : 0;
            AverageCalories = totalCalories > 0 ? totalCalories / numberOfMeal : 0;

            // Retrieve top 5 most used recipes
            Top5Recipes = _context.Recipes
                .OrderByDescending(r => r.RecipesIngredients.Count)
                .Take(5)
                .ToList();

            Top5Ingredients = _context.Ingredients
             .OrderByDescending(i => i.RecipesIngredients.Count)
             .Take(5)
             .ToList();
        }
    }
}

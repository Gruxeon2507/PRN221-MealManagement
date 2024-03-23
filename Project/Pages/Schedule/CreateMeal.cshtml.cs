using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Project.Hubs;
using Project.MealHubs;
using Project.Models;

namespace Project.Pages.Schedule
{
    public class CreateMealModel : PageModel
    {
        private readonly PRN221_MealManagementContext _context;
        private readonly IHubContext<RecipesHub> _hubContext;

        public CreateMealModel(PRN221_MealManagementContext context, IHubContext<RecipesHub> hubContext)
        {
            _context = context;
            _hubContext = hubContext;
        }

        public DateTime CreatedDay { get; set; }

		public List<Models.Recipe> Recipes { get; set; }

		public void OnGet(int year = 0, int month = 0, int day = 0)
        {
           

            if(day == 0 || month == 0 || year == 0)
            {
                HttpContext.Response.Redirect("/Schedule/Index");
            }
            else
            {
                DateTime createdDay = new DateTime(year, month, day);
                CreatedDay = createdDay;
                Meal meal = _context.Meals.Where(m => m.CreatedBy.Equals(createdDay)).FirstOrDefault();
                if(meal != null)
                {
					HttpContext.Response.Redirect("/Schedule/UpdateMeal?mealId="+meal.Id);
				}
			}

            Recipes = _context.Recipes.Include(r => r.RecipesIngredients).ThenInclude(ri => ri.Ingredient).ToList();
		}
		public async Task<IActionResult> OnPostAsync()
		{
            Meal meal = new Meal();
            string[] raw_recipes = Request.Form["recipes"];
            string message = Request.Form["message"];
            string createdDay = Request.Form["createdDay"];


            List<MealsRecipe> listMealRecipe = new List<MealsRecipe>();
            foreach(string s in raw_recipes)
            {
                int id = Convert.ToInt32(s);
                MealsRecipe mealsRecipe = new MealsRecipe();
                mealsRecipe.RecipeId = id;
                listMealRecipe.Add(mealsRecipe);
            }
            meal.MealsRecipes = listMealRecipe;
			string data = HttpContext.Session.GetString("user");
			User user = new User();
			if (data == null)
			{
				HttpContext.Response.Redirect("/Login");
			}
			else
			{
				user = JsonSerializer.Deserialize<User>(data);
			}
            meal.UserId = user.Id;
            DateTime created = Convert.ToDateTime(createdDay);
            meal.CreatedBy = created;
            meal.Message = message;
            _context.Meals.Add(meal);
           
            _context.MealsRecipes.AddRange(meal.MealsRecipes);
            _context.SaveChanges();
            _hubContext.Clients.All.SendAsync("MealLoad");
            return RedirectToAction("Index");
		}

        public IActionResult OnGetRecipeDetails(List<int> recipeId)
        {
            List<Models.Recipe> recipes = new List<Models.Recipe>();
            foreach (int id in recipeId)
            {
                Models.Recipe recipe = _context.Recipes.Where(r => r.Id == id)
                .Include(r => r.RecipesIngredients)
                .ThenInclude(ri => ri.Ingredient)
                .FirstOrDefault();
                if (recipe != null) recipes.Add(recipe);
            }
          
            if (recipes.Count != 0)
            {
                return Partial("RecipeDetailsPartial", recipes); // Return a partial view with recipe details
            }
            else
            {
                return NotFound(); // Handle case where recipe with given ID is not found
            }
        }

        public IActionResult OnGetPrint(List<int> recipeId)
        {
            List<Models.Recipe> recipes = new List<Models.Recipe>();
            foreach (int id in recipeId)
            {
                Models.Recipe recipe = _context.Recipes.Where(r => r.Id == id)
                .Include(r => r.RecipesIngredients)
                .ThenInclude(ri => ri.Ingredient)
                .FirstOrDefault();
                if (recipe != null) recipes.Add(recipe);
            }

            if (recipes.Count != 0)
            {
                return Partial("RecipeDetailsPrint", recipes); // Return a partial view with recipe details
            }
            else
            {
                return NotFound(); // Handle case where recipe with given ID is not found
            }
        }

    }
}

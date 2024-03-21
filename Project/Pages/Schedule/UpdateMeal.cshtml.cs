using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Pages.Schedule
{
    public class UpdateMealModel : PageModel
    {

        public readonly PRN221_MealManagementContext _context;

        public UpdateMealModel(PRN221_MealManagementContext context)
        {
            _context = context;
        }

        public Meal Meal { get; set; }

        public List<Models.Recipe> Recipes { get; set; }

        public string Message { get; set; }

        public void OnGet(int mealId = 0, string message ="")
        {
            if(mealId == 0)
            {
                HttpContext.Response.Redirect("/Schedule/Index");
            }
            else
            {
                Meal = _context.Meals.Where(me => me.Id == mealId)
                    .Include(m => m.MealsRecipes)
                    .FirstOrDefault(); 
                if(Meal == null)
                {
                    HttpContext.Response.Redirect("/Schedule/Index");
                }
            }
            Message = message;
            Recipes = _context.Recipes.Include(r => r.RecipesIngredients).ThenInclude(ri => ri.Ingredient).ToList();
        }
        public async Task<IActionResult> OnPostAsync()
        {
            string raw_id = Request.Form["id"];
            string[] raw_recipes = Request.Form["recipes"];
            string message = Request.Form["message"];
            string createdDay = Request.Form["createdDay"];
            int id = Convert.ToInt32(raw_id);
            Meal meal = _context.Meals.Where(m => m.Id == id).Include(me => me.MealsRecipes).FirstOrDefault();
            Meal = meal;
            List<MealsRecipe> listMealRecipe = new List<MealsRecipe>();
            foreach (string s in raw_recipes)
            {
                int id_meal = Convert.ToInt32(s);
                MealsRecipe mealsRecipe = new MealsRecipe();
                mealsRecipe.RecipeId = id_meal;
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
            meal.Message = message;
            _context.Meals.Update(meal);

            _context.MealsRecipes.UpdateRange(meal.MealsRecipes);
            Meal = meal;
            _context.SaveChanges();
            Message = "Update successfully!!";
            return RedirectToAction("./Index", new {mealId = meal.Id, message = Message});
        }
    }
}

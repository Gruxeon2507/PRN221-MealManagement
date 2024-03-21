using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Pages.Schedule
{
    public class DeleteMealModel : PageModel
    {

        private readonly PRN221_MealManagementContext _context;

        public DeleteMealModel(PRN221_MealManagementContext context)
        {
            _context = context;
        }
        public void OnGet(int mealId = 0)
        {
            if(mealId == 0)
            {
                HttpContext.Response.Redirect("/Schedule/Index");
            }
            else
            {
                Meal meal = _context.Meals.Include(m => m.MealsRecipes).Where(me => me.Id == mealId).SingleOrDefault();
                if(meal == null) HttpContext.Response.Redirect("/Schedule/Index");
                _context.MealsRecipes.RemoveRange(meal.MealsRecipes);
                _context.Meals.Remove(meal);
                _context.SaveChanges();
            }
        }
    }
}

using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Session;
using Project.Models;

namespace Project.Pages.Schedule
{
    public class IndexModel : PageModel
    {
        public readonly PRN221_MealManagementContext _context;

		public IndexModel(PRN221_MealManagementContext context)
		{
			_context = context;
		}

		public List<Meal> Meals { get; set; }

		public void OnGet()
        {
            string data = HttpContext.Session.GetString("user");
            User user = new User();
            if(data == null)
            {
                HttpContext.Response.Redirect("/Login");
            }
            else
            {
                user = JsonSerializer.Deserialize<User>(data);
            }
            Meals = _context.Meals.Where(m => m.UserId == user.Id).ToList();
        }

        
		}
}

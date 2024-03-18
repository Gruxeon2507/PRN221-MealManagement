using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Project.Models;

namespace Project.Pages.Login
{
    public class IndexModel : PageModel
    {
        public string Error { get; set; }
        
        private readonly PRN221_MealManagementContext _context;
        public IndexModel(PRN221_MealManagementContext context)
        {
            _context = context;
        }
        public void OnGet()
        {
        }
        public IActionResult OnPost(string? username, string? password) { 
            User user = _context.Users.Where(u => u.Username==username).FirstOrDefault();
            if (user != null)
            {
                if(user.Password==password)
                {
                    return RedirectToPage("/Ingredient/Index");
                }
            }
            else
            {
                Error = "Wrong username or password";
            }
            return RedirectToPage("/Login/Index");
        }
    }
}

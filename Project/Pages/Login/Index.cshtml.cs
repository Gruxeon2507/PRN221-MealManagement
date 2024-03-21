using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Project.Models;

namespace Project.Pages.Login
{
    public class IndexModel : PageModel
    {
        public string Error { get; set; }
        
        private readonly PRN221_MealManagementContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;
        public IndexModel(PRN221_MealManagementContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
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
                    var session = _httpContextAccessor.HttpContext.Session;
                    session.SetString("username",user.Username);
                    session.SetString("role",user.Role);
                    HttpContext.Session.SetString("user", JsonSerializer.Serialize(user));
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

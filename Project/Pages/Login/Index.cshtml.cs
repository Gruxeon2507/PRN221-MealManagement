using System.Data;
using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Project.Models;

namespace Project.Pages.Login
{
    public class IndexModel : PageModel
    {
        [TempData]
        public string ErrorMessage { get; set; }
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
            // Clear error message on page load
            ErrorMessage = null;
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
                    HttpContext.Session.SetString("role", user.Role);
                    return RedirectToPage("/Schedule/Index");
                }
            }
            else
            {
                ErrorMessage = "Wrong username or password";
                return Page();
            }
            return RedirectToPage("/Login/Index");
        }
    }
}

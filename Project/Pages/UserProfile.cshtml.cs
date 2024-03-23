using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Project.Models;

namespace Project.Pages
{
    public class UserProfileModel : PageModel
    {
        public readonly PRN221_MealManagementContext _context;

        public UserProfileModel(PRN221_MealManagementContext context)
        {
            _context = context;
        }
        public User User { get; set; }
        public void OnGet()
        {
            string data = HttpContext.Session.GetString("user");
            User user = new User();
            if (data == null)
            {
                HttpContext.Response.Redirect("/Login");
            }
            else
            {
                user = JsonSerializer.Deserialize<User>(data);
                User = user;
            }
        }

        public void OnPostAsync()
        {
            string data = HttpContext.Session.GetString("user");
            User user = new User();
            if (data == null)
            {
                HttpContext.Response.Redirect("/Login");
            }
            else
            {
                user = JsonSerializer.Deserialize<User>(data);
                User = user;
            }
            string email = Request.Form["email"];
            User userFind = User;
            userFind.Email = email;
            User = userFind;
            HttpContext.Session.SetString("user", JsonSerializer.Serialize(userFind));
            _context.Users.Update(userFind);
            _context.SaveChanges();
        }
        }
}

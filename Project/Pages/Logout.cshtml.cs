using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Project.Models;

namespace Project.Pages
{
    public class LogoutModel : PageModel
    {
        public void OnGet()
        {
            HttpContext.Session.Remove("user");
            HttpContext.Session.Remove("role");
            HttpContext.Session.Remove("username");
            HttpContext.Response.Redirect("/");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.SignalR;
using Project.Hubs;
using Project.Models;

namespace Project.Pages.Recipe
{
    public class CreateModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;
        private readonly IHubContext<RecipesHub> _hubContext;

        public CreateModel(PRN221_MealManagementContext context, IHubContext<RecipesHub> hubContext)
        {
            _context = context;
            _hubContext = hubContext;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Models.Recipe Recipe { get; set; } = default!;
        

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
          if (!ModelState.IsValid || _context.Recipes == null || Recipe == null)
            {
                return Page();
            }

            _context.Recipes.Add(Recipe);
            await _context.SaveChangesAsync();
            _hubContext.Clients.All.SendAsync("RecipeLoad");
            return RedirectToPage("./Index");
        }
    }
}

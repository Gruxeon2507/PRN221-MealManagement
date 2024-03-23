using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Project.Hubs;
using Project.Models;

namespace Project.Pages.Recipe
{
    public class DeleteModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;
        private readonly IHubContext<RecipesHub> _hubContext;

        public DeleteModel(PRN221_MealManagementContext context, IHubContext<RecipesHub> hubContext)
        {
            _context = context;
            _hubContext = hubContext;
        }

        [BindProperty]
      public Models.Recipe Recipe { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes.FirstOrDefaultAsync(m => m.Id == id);

            if (recipe == null)
            {
                return NotFound();
            }
            else 
            {
                Recipe = recipe;
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }
            var recipe = await _context.Recipes.FindAsync(id);

            if (recipe != null)
            {
                Recipe = recipe;
                _context.Recipes.Remove(Recipe);
                await _context.SaveChangesAsync();
            }
            _hubContext.Clients.All.SendAsync("RecipeLoad");
            return RedirectToPage("./Index");
        }
    }
}

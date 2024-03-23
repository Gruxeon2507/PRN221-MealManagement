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

namespace Project.Pages.Ingredient
{
    public class DeleteModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;
        private readonly IHubContext<IngredientsHub> hubContext;

        public DeleteModel(PRN221_MealManagementContext context, IHubContext<IngredientsHub> hubContext)
        {
            _context = context;
            this.hubContext = hubContext;
        }

        [BindProperty]
      public Models.Ingredient Ingredient { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Ingredients == null)
            {
                return NotFound();
            }

            var ingredient = await _context.Ingredients.FirstOrDefaultAsync(m => m.Id == id);

            if (ingredient == null)
            {
                return NotFound();
            }
            else 
            {
                Ingredient = ingredient;
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null || _context.Ingredients == null)
            {
                return NotFound();
            }
            var ingredient = await _context.Ingredients.FindAsync(id);

            if (ingredient != null)
            {
                Ingredient = ingredient;
                _context.Ingredients.Remove(Ingredient);
                await _context.SaveChangesAsync();
            }
            hubContext.Clients.All.SendAsync("IngredientLoad");

            return RedirectToPage("./Index");
        }
    }
}

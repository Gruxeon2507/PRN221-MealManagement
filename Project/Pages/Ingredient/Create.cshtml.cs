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

namespace Project.Pages.Ingredient
{
    public class CreateModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;
        private readonly IHubContext<IngredientsHub> hubContext;

        public CreateModel(Project.Models.PRN221_MealManagementContext context, IHubContext<IngredientsHub> hubContext)
        {
            _context = context;
            this.hubContext = hubContext;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Models.Ingredient Ingredient { get; set; } = default!;
        

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
          if (!ModelState.IsValid || _context.Ingredients == null || Ingredient == null)
            {
                return Page();
            }

            _context.Ingredients.Add(Ingredient);
            await _context.SaveChangesAsync();
            hubContext.Clients.All.SendAsync("IngredientLoad");
            return RedirectToPage("./Index");
        }
    }
}

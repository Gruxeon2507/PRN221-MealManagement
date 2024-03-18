using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Pages.Ingredient
{
    public class IndexModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;

        public IndexModel(Project.Models.PRN221_MealManagementContext context)
        {
            _context = context;
        }

        public IList<Models.Ingredient> Ingredient { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Ingredients != null)
            {
                Ingredient = await _context.Ingredients.ToListAsync();
            }
        }
    }
}

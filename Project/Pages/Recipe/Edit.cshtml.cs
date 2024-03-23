using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Project.Hubs;
using Project.Models;

namespace Project.Pages.Recipe
{
    public class EditModel : PageModel
    {
        private readonly PRN221_MealManagementContext _context;
        private readonly IHubContext<RecipesHub> _hubContext;

        public EditModel(PRN221_MealManagementContext context, IHubContext<RecipesHub> hubContext)
        {
            _context = context;
            _hubContext = hubContext;
        }

        [BindProperty]
        public Models.Recipe Recipe { get; set; }

        [BindProperty]
        public int SelectedIngredient { get; set; }

        public SelectList AvailableIngredients { get; set; }
        public List<Models.Ingredient> Ingredients { get; set; }
        public List<Models.RecipesIngredient> RecipesIngredients { get; set; }
        [BindProperty]
        public int RemoveIngredientIds { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Recipe = await _context.Recipes.Include(r=>r.RecipesIngredients).FirstOrDefaultAsync(m => m.Id == id);

            if (Recipe == null)
            {
                return NotFound();
            }

            Ingredients = await _context.Ingredients.ToListAsync();
            AvailableIngredients = new SelectList(Ingredients, "Id", "Name");
            RecipesIngredients = await _context.RecipesIngredients.Include(re => re.Ingredient).Where(re => re.RecipeId == id).ToListAsync();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            // Remove ingredients
            if (RemoveIngredientIds != null)
            {
                    var ingredientToRemove = await _context.RecipesIngredients.FirstOrDefaultAsync(re => re.IngredientId == RemoveIngredientIds && re.RecipeId == Recipe.Id);

                    if (ingredientToRemove != null)
                    {
                        _context.RecipesIngredients.Remove(ingredientToRemove);
                    }
                
            }

            // Add selected ingredient to the recipe if not already present
            if (SelectedIngredient != 0 && !Recipe.RecipesIngredients.Any(ri => ri.IngredientId == SelectedIngredient))
            {

                var check = _context.RecipesIngredients.Where(re => re.IngredientId == SelectedIngredient && re.RecipeId == Recipe.Id).FirstOrDefault();
                if (check == null) { 
                var newRecipeIngredient = new RecipesIngredient
                {
                    IngredientId = SelectedIngredient,
                    RecipeId = Recipe.Id
                };

                _context.RecipesIngredients.Add(newRecipeIngredient);
                }
            }

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RecipeExists(Recipe.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            _hubContext.Clients.All.SendAsync("RecipeLoad");
            return RedirectToPage("./Index");
        }


        private bool RecipeExists(int id)
        {
            return _context.Recipes.Any(e => e.Id == id);
        }
    }
}

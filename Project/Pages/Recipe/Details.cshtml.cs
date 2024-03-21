using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Project.Models;

namespace Project.Pages.Recipe
{
    public class DetailsModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;

        public DetailsModel(Project.Models.PRN221_MealManagementContext context)
        {
            _context = context;
        }

        public Models.Recipe Recipe { get; set; } = default!; 
        public List<Models.RecipesIngredient> RecipesIngredients { get; set; }
        public List<Models.Ingredient> AddedIngredients { get; set; }
        public int TotalCost { get; set; } = 0;
        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes.Include(r => r.RecipesIngredients).FirstOrDefaultAsync(m => m.Id == id);
            if (recipe == null)
            {
                return NotFound();
            }
            else 
            {
                Recipe = recipe;
                RecipesIngredients = await _context.RecipesIngredients.Include(r => r.Ingredient).Include(r => r.Recipe).Where(r => r.RecipeId==id).ToListAsync();
                foreach(var ri in RecipesIngredients)
                {
                    if (ri.Amount != null && ri.Ingredient.Price != null)
                    {
                        TotalCost += ri.Amount.Value * ri.Ingredient.Price.Value;

                    }
                }
                AddedIngredients = await _context.Ingredients.ToListAsync();
                List<Models.Ingredient> ingredientsToRemove = new List<Models.Ingredient>();
                foreach (var ri in RecipesIngredients)
                {
                    foreach (var ai in AddedIngredients)
                    {
                        if (ri.IngredientId == ai.Id)
                        {
                            ingredientsToRemove.Add(ai);
                        }
                    }
                }
                // Remove the ingredients found in RecipesIngredients from AddedIngredients
                foreach (var ingredientToRemove in ingredientsToRemove)
                {
                    AddedIngredients.Remove(ingredientToRemove);
                }

            }

            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? removedId, int? recipeId, int? addedId, int? amount)
        {
            if (removedId != null && recipeId!=null)
            {
                RecipesIngredient ri = _context.RecipesIngredients.Where(ri => ri.RecipeId==recipeId.Value&&ri.IngredientId== removedId.Value).FirstOrDefault();
                if (ri != null) {
                    _context.RecipesIngredients.Remove(ri);
                    _context.SaveChanges();
                }
            }
            if (recipeId !=null &&  addedId != null && amount!=null) {
                RecipesIngredient ri =new RecipesIngredient
                {
                    Amount = amount.Value,
                    IngredientId= addedId.Value,
                    RecipeId=recipeId.Value,
                };

                _context.RecipesIngredients.Add(ri);
                _context.SaveChanges();
            }
            return RedirectToPage("/Recipe/Details", new { id = recipeId});
        }
    }
}

using System;
using System.Collections.Generic;

namespace Project.Models
{
    public partial class Ingredient
    {
        public Ingredient()
        {
            RecipesIngredients = new HashSet<RecipesIngredient>();
        }

        public int Id { get; set; }
        public int? Name { get; set; }
        public int? Price { get; set; }

        public virtual ICollection<RecipesIngredient> RecipesIngredients { get; set; }
    }
}

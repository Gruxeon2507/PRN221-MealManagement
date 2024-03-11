using System;
using System.Collections.Generic;

namespace Project.Models
{
    public partial class Meal
    {
        public Meal()
        {
            MealsRecipes = new HashSet<MealsRecipe>();
        }

        public int Id { get; set; }
        public DateTime? Date { get; set; }
        public int? CreatedBy { get; set; }

        public virtual User? CreatedByNavigation { get; set; }
        public virtual ICollection<MealsRecipe> MealsRecipes { get; set; }
    }
}

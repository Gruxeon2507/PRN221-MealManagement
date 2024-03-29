﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using Project.Hubs;
using Project.Models;

namespace Project.Pages.Recipe
{
    public class IndexModel : PageModel
    {
        private readonly Project.Models.PRN221_MealManagementContext _context;
        private readonly IHubContext<RecipesHub> _hubContext;

        public IndexModel(PRN221_MealManagementContext context, IHubContext<RecipesHub> hubContext)
        {
            _context = context;
            _hubContext = hubContext;
        }

        public IList<Models.Recipe> Recipe { get;set; } = default!;
        public int PageSize { get; private set; } = 10; // Number of items per page
        public int TotalPages { get; private set; }
        public int CurrentPage { get; private set; } = 1;
        public int Page = 1;
        public string SearchInput;
        public async Task<IActionResult> OnGetAsync(string searchInput)
        {
            string data = HttpContext.Session.GetString("user");
            User user = new User();
            if (data == null)
            {
                return RedirectToPage("/Login/Index");
            }
            if (!string.IsNullOrEmpty(searchInput))
            {
                Recipe = await _context.Recipes.Where(r => r.Id.ToString() == searchInput || r.Name.Contains(searchInput)).ToListAsync();
                SearchInput=searchInput;
            }
            else
            {
                if (_context.Recipes != null)
                {
                    Recipe = await _context.Recipes.ToListAsync();
                }
            }
            if (Request.Query.ContainsKey("page") && int.TryParse(Request.Query["page"], out int page))
            {
                Page = page;
            }
            else
            {
                Page = 1; // Default to page 1 if no page parameter is provided or if it's invalid
            }
            CurrentPage = Page == 0 ? 1 : Page;
            TotalPages = TotalPages = (int)Math.Ceiling(Recipe.Count / (double)PageSize);
            CurrentPage = CurrentPage < 1 ? 1 : (CurrentPage > TotalPages ? TotalPages : CurrentPage);
            Recipe = Recipe.Skip((CurrentPage - 1) * PageSize).Take(PageSize).ToList();
            return Page();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OfficeOpenXml;
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

        public IList<Models.Ingredient> Ingredient { get; set; } = default!;
        public int PageSize { get; private set; } = 10; // Number of items per page
        public int TotalPages { get; private set; }
        public int CurrentPage { get; private set; } = 1;
        public int Page = 1;
        public string SearchInput;
        public async Task OnGetAsync(string searchInput)
        {
            if (!string.IsNullOrEmpty(searchInput))
            {
                Ingredient = await _context.Ingredients.Where(r => r.Id.ToString() == searchInput || r.Name.Contains(searchInput)).ToListAsync();
                SearchInput = searchInput;
            }
            else
            {
                if (_context.Recipes != null)
                {
                    Ingredient = await _context.Ingredients.ToListAsync();
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
            TotalPages = TotalPages = (int)Math.Ceiling(Ingredient.Count / (double)PageSize);
            CurrentPage = CurrentPage < 1 ? 1 : (CurrentPage > TotalPages ? TotalPages : CurrentPage);
            Ingredient = Ingredient.Skip((CurrentPage - 1) * PageSize).Take(PageSize).ToList();
        }

        public async Task<IActionResult> OnPostAsync(List<IFormFile> files,int export)
        {
            foreach (var file in files)
            {
                if (file.Length > 0)
                {
                    using var stream = file.OpenReadStream();
                    using var excelPackage = new ExcelPackage(stream);
                    var worksheet = excelPackage.Workbook.Worksheets[0];

                    int rowCount = worksheet.Dimension.Rows;

                    for (int row = 2; row <= rowCount; row++)
                    {
                        var excelData = new Models.Ingredient
                        {
                            Name = worksheet.Cells[row, 1].Value.ToString(),
                            Price = int.Parse(worksheet.Cells[row, 2].Value.ToString()),
                            Calories = int.Parse(worksheet.Cells[row, 3].Value.ToString())

                        };
                        var existed = await _context.Ingredients.Where(i => i.Name == excelData.Name).FirstOrDefaultAsync();
                        if (existed != null)
                        {
                            existed.Price = excelData.Price;
                            existed.Calories = excelData.Calories;
                            _context.Ingredients.Update(existed);
                        }
                        else
                        {
                            _context.Ingredients.Add(excelData);
                        }
                    }

                    _context.SaveChanges();
                }
            }
            if (export != null&& export>0)
            {
                var excelPackage = new ExcelPackage();
                var worksheet = excelPackage.Workbook.Worksheets.Add("Sheet1");

                var data = _context.Ingredients.ToList(); // Assuming ExcelDatas is your DbSet<ExcelData>

                // Add headers
                worksheet.Cells[1, 1].Value = "Name";
                worksheet.Cells[1, 2].Value = "Price";
                worksheet.Cells[1, 3].Value = "Calories";

                // Add data
                int row = 2;
                foreach (var item in data)
                {
                    worksheet.Cells[row, 1].Value = item.Name;
                    worksheet.Cells[row, 2].Value = item.Price;
                    worksheet.Cells[row, 3].Value = item.Calories;
                    row++;
                }

                // Prepare the package for download
                var memoryStream = new MemoryStream();
                excelPackage.SaveAs(memoryStream);
                memoryStream.Position = 0;

                // Return the Excel file
                return File(memoryStream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "data.xlsx");
            }
            return RedirectToPage("/Ingredient/Index");
        }
    }
}

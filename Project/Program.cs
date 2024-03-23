using Microsoft.EntityFrameworkCore;
using Project.Hubs;
using Project.MealHubs;
using Project.Models;
using System;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();

builder.Services.AddDbContext<PRN221_MealManagementContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"));
});

builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
});

builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
});

builder.Services.AddSignalR();

builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}
app.UseStaticFiles();

app.UseRouting();
app.UseSession();
app.UseAuthorization();

app.MapHub<MealHubs>("/SignalRHub");
app.MapHub<RecipesHub>("/RecipeHub");
app.MapHub<IngredientsHub>("/IngredientHub");

app.MapRazorPages();

app.UseEndpoints(endpoints =>
{
    endpoints.MapGet("/", async context =>
    {
        context.Response.Redirect("/Login");
    });
});
app.Run();

using VibeCollection.API.Data;

namespace VibeCollection.API
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Register services BEFORE building the app
            builder.Services.AddSingleton<DatabaseHelper>();
            builder.Services.AddControllers();
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            // Enable Swagger in development
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseHttpsRedirection();
            app.UseAuthorization();

            app.MapControllers(); // Map attribute-routed controllers
            app.MapGet("/", () => "Welcome to VibeCollection API");

            app.Run();
        }
    }
}

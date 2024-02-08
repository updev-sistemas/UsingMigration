using EvolveDb;
using Npgsql;

try
{
    using var cnx = new NpgsqlConnection("User ID=postgres;Password=********;Host=localhost;Port=5432;Database=test_migration;");
    var evolve = new Evolve(cnx, log => Console.WriteLine(log))
    {
        Locations = new[] { "./db/migrations" },
        IsEraseDisabled = true,
    };

    evolve.Migrate();


    Console.BackgroundColor = ConsoleColor.Green;
    Console.WriteLine("Migration executadas.");

}
catch (Exception ex)
{
    Console.BackgroundColor = ConsoleColor.Red;
    Console.WriteLine(ex.ToString());
}
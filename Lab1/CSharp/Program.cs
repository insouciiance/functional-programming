using System.Runtime.InteropServices;

static List<T?> Singleton<T>(T? item) => new() { item };

static bool Null<T>(List<T?>? list) => list is null or { Count: 0 };

static List<T?> Snoc<T>(List<T?> list, T? item) => new(list) { item };

static int Length<T>(List<T?> list)
{
    int length = 0;

    foreach (var _ in CollectionsMarshal.AsSpan(list))
        length++;

    return length;
}

Console.WriteLine($"[{string.Join(", ", Singleton("hi"))}]");   

Console.WriteLine(Null<string>(new() { "a" }));
Console.WriteLine(Null<object>(null));

Console.WriteLine($"[{string.Join(", ", Snoc(new() { "a" }, "b"))}]");
Console.WriteLine($"[{string.Join(", ", Snoc(new(), "b"))}]");

Console.WriteLine(Length(new List<string?>() { "a", "b" }));
Console.WriteLine(Length(new List<object?>()));

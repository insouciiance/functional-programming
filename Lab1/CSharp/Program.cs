using System.Runtime.InteropServices;

static List<T?> Singleton<T>(T? item) => new() { item };

static bool Null<T>(List<T?>? list) => list?.Count == 0;

static List<T?> Snoc<T>(List<T?> list, T? item) => new(list) { item };

static int Length<T>(List<T?> list)
{
    int length = 0;

    foreach (var _ in CollectionsMarshal.AsSpan(list))
        length++;

    return length;
}

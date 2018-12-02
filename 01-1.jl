function sol()
    f = open("data/01.txt")
    lines = readlines(f)
    freq = 0
    for (_, l) in enumerate(lines)
        freq += parse(Int64,l)
    end
    return freq
end

println(sol())

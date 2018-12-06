function remove_pairs(s::String)
    pairs = String[]
    for c in 'a':'z'
        push!(pairs, lowercase(c)*uppercase(c))
        push!(pairs, uppercase(c)*lowercase(c))
    end
    while true
        old_len = length(s)
        for p in pairs
            s = replace(s, p => "")
        end
        if length(s) == old_len
            break
        end
    end
    return s
end

function sol()
    f = open("data/05.txt")
    s = read(f, String)
    println(s)
    t = remove_pairs(s)
    t = strip(t)
    println(t)
    return length(t)
end

println(sol())

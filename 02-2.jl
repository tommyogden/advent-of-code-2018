function distance(a::String, b::String)
    dist = 0
    for (i, c) in enumerate(a)
        if a[i] != b[i]
            dist += 1
        end
    end
    return dist
end

function sol() 
    f = open("data/02.txt")
    lines = readlines(f)
    for (i, l_a) in enumerate(lines)
        for l_b in lines[i+1:end]
            if distance(l_a, l_b) == 1
                return (l_a, l_b)
            end
        end
    end
end

println(sol())

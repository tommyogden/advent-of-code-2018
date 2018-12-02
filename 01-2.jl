function sol()
    f = open("data/01-1.txt")
    lines = readlines(f)
    freq = 0
    freqs = Int64[]
    ans::Int64 = 0
    found = false
    while found == false 
        for (_, l) in enumerate(lines)
            freq += parse(Int64,l)
            if freq in freqs
                ans = freq
                found = true
                break                
            end
            push!(freqs, freq)
        end
    end
    return ans
end

println(sol())

# 1. function that takes a string e.g. 'bababc' that finds returns the number
# of pairs, triples etc.

"""
    count_tuples_of_chars(s, n)
    
e.g. if n is 2, how many pairs are in the string s
"""
function count_tuples_of_chars(s::String, n::Int64)
    counts = Dict{Char,Int64}()
    for c in 'a':'z'
        counts[c] = 0
    end
    for c in s
        counts[c] += 1
    end
    return count(i->i==n, values(counts))
end

function sol()
    f = open("data/02.txt")
    lines = readlines(f)
    count_has_pairs = 0
    counts_has_triples = 0
    for l in lines
        if count_tuples_of_chars(l, 2) > 0
            count_has_pairs += 1
        end
        if count_tuples_of_chars(l, 3) > 0
            counts_has_triples += 1
        end
    end

    return count_has_pairs*counts_has_triples
end

println(sol())

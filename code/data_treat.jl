function eDistance(x1, x2, y1, y2)
    return ((y1-x1)^2+(y2-x2)^2)^(1/2)
end

function readFile(filename)
    keys = Int64[]
    vals = []
    open(filename, "r") do f
        for line in eachline(f)
            if (line=="EOF")
                break
            end
            elements = split(line)
            elements = parse.(Float64, elements)
            append!(keys, elements[1])
            push!(vals, (elements[2], elements[3]))
        end
    end
    nodes = Dict(zip(keys, vals))
    nodes = sort(collect(nodes))
    print("Nodes \n", nodes,"\n")
end


function main()
    readFile("dados/burma14.tsp")
end


main()

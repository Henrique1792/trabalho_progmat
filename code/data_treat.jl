function eDistance(node1, node2)
    return ((node2[1]-node1[1])^2+(node2[2]-node1[2])^2)^(1/2)
end

function writeDistances(nodes)
    graph = Dict()
    for (key1, node1) in nodes
        distances = []
        distanceList = []
        for (key2, node2) in nodes
            if(key1 !== key2)
                distance = eDistance(node1, node2)
                append!(distances, distance)
            end
        end
        append!(distanceList, distances)
        graph[key1] = distanceList
    end
    graph = sort(collect(graph))
    return graph
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
    return writeDistances(nodes)
end
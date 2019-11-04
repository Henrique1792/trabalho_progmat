include("data_treat.jl")

using JuMP, Cbc



function main()
    nodes = readFile("dados/burma14.tsp")
    model = Model(with_optimizer(Cbc.Optimizer))
    modelSize = length(nodes)
    println("modelSize ", modelSize)
    #@variables model begin
        
    #end
    #@objective (model, Min, sum(c[i][j]*x[i][j]) for (i,j)=1:modelSize)
    #@optimize!(model)

end

main()

#Estrutura básica
#model = Model()
#@variable(model, exp)
#@variable(model, exp)
#@objective(model, Max/min, exp)
#@constraint(model, constraint)
#@constraint(model, constraint)
#optimize!(model, with_optimizer(Cbc.Optimizer))



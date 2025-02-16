using AsymptoticMVib
using Test
using Aqua

@testset "AsymptoticMVib.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(AsymptoticMVib; ambiguities = false,)
    end
    # Write your tests here.
end

using AsymptoticMVib
using TestItems: @testitem
using TestItemRunner: @run_package_tests

@run_package_tests

@testitem "Functions" begin
    @test add(1, 2) == 3
    @test add(1.0, 2.0) == 3.0
end

@testitem "Code quality (Aqua.jl)" begin
    using Aqua
    Aqua.test_all(AsymptoticMVib; ambiguities = false, deps_compat = (check_extras = false))
end

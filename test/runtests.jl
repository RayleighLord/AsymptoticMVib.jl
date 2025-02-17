using AsymptoticMVib
using TestItems: @testitem
using TestItemRunner: @run_package_tests

tags_to_run = let t = get(ENV, "SELECTED_TEST_SUITE", "default, aqua")
    t = split(t, ",")
    t = map(Symbol, t)
    t
end

@eval @run_package_tests filter=ti -> !isdisjoint(ti.tags, $tags_to_run) verbose=true

@testitem "Functions" tags=[:default] begin
    @test add(1, 2) == 3
    @test add(1.0, 2.0) == 3.0
end

@testitem "Code quality (Aqua.jl)" tags=[:aqua] begin
    using Aqua
    Aqua.test_all(AsymptoticMVib; ambiguities = false, deps_compat = (check_extras = false))
end

@testset "executive_compensation" begin
    @test isa(executive_compensation(fmp, "AAPL"), JSONTable)
end

@testset "executive_compensation_benchmarks" begin
    @test isa(executive_compensation_benchmarks(fmp, year = 2020), JSONTable)
end

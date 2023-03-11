@testset "executive_compensation" begin
    @test_throws PermissionError isa(executive_compensation(fmp, "AAPL"), JSONTable)
end

@testset "executive_compensation_benchmark" begin
    @test_throws PermissionError isa(executive_compensation_benchmark(fmp, year = 2020), JSONTable)
end

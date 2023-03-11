@testset "executive_compensation" begin
    @test_throws PermissionError executive_compensation(fmp, "AAPL")
end

@testset "executive_compensation_benchmarks" begin
    @test_throws PermissionError executive_compensation_benchmarks(fmp, year = 2020)
end

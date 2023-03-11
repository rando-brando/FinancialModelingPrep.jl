@testset "esg_scores" begin
    @test_throws PermissionError isa(esg_scores(fmp, "AAPL"), JSONTable)
end

@testset "esg_ratings" begin
    @test_throws PermissionError isa(esg_ratings(fmp, "AAPL"), JSONTable)
end

@testset "esg_score_benchmarks" begin
    @test_throws PermissionError isa(esg_score_benchmarks(fmp, year = 2022), JSONTable)
end

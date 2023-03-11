@testset "esg_scores" begin
    @test_throws PermissionError esg_scores(fmp, "AAPL")
end

@testset "esg_ratings" begin
    @test_throws PermissionError esg_ratings(fmp, "AAPL")
end

@testset "esg_score_benchmarks" begin
    @test_throws PermissionError esg_score_benchmarks(fmp, year = 2022)
end

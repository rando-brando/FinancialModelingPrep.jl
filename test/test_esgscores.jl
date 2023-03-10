@testset "esg_scores" begin
    @test isa(esg_scores(fmp, "AAPL"), JSONTable)
end

@testset "esg_ratings" begin
    @test isa(esg_ratings(fmp, "AAPL"), JSONTable)
end

@testset "esg_score_benchmarks" begin
    @test isa(esg_score_benchmarks(fmp, 2022), JSONTable)
end
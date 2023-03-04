@testset "social_sentiment" begin
    @test !isempty(social_sentiment(fmp, "AAPL", page = 0)[1])
    @test !isempty(social_sentiment(fmp, type = "trending", type = "bullish", source = "stocktwits")[1])
end

@testset "stock_grades" begin
    @test !isempty(stock_grades(fmp, "AAPL", limit = 10)[1])
end

@testset "earnings_surprises" begin
    @test !isempty(earnings_surprises(fmp, "AAPL")[1])
end

@testset "analyst_estimates" begin
    @test !isempty(analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4)[1])
end

@testset "mergers_and_acquisitions_feed" begin
    @test !isempty(mergers_and_acquisitions_feed(fmp, page = 0)[1])
end

@testset "mergers_and_acquisitions_search" begin
    @test !isempty(mergers_and_acquisitions_search(fmp, name = "Syros")[1])
end
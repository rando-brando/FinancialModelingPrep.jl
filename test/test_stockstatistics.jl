@testset "social_sentiment" begin
    @test isa(social_sentiment(fmp, "AAPL", page = 0), JSONTable)
    @test isa(social_sentiment(fmp, type = "trending", type = "bullish", source = "stocktwits"), JSONTable)
end

@testset "stock_grades" begin
    @test isa(stock_grades(fmp, "AAPL", limit = 10), JSONTable)
end

@testset "earnings_surprises" begin
    @test isa(earnings_surprises(fmp, "AAPL"), JSONTable)
end

@testset "analyst_estimates" begin
    @test isa(analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4), JSONTable)
end

@testset "mergers_and_acquisitions_feed" begin
    @test isa(mergers_and_acquisitions_feed(fmp, page = 0), JSONTable)
end

@testset "mergers_and_acquisitions_search" begin
    @test isa(mergers_and_acquisitions_search(fmp, name = "Syros"), JSONTable)
end
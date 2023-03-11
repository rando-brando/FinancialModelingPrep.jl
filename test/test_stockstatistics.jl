@testset "social_sentiment" begin
    @test_throws PermissionError isa(historical_social_sentiment(fmp, "AAPL", page = 0), JSONTable)
end

@testset "social_sentiment_trends" begin
    @test_throws PermissionError isa(social_sentiment_trends(fmp, type = "bearish", source = "stocktwits"), JSONTable)
end

@testset "social_sentiment_changes" begin
    @test_throws PermissionError isa(social_sentiment_changes(fmp, type = "bearish", source = "twitter"), JSONTable)
end

@testset "stock_grades" begin
    @test_throws PermissionError isa(stock_grades(fmp, "AAPL", limit = 10), JSONTable)
end

@testset "earnings_surprises" begin
    @test isa(earnings_surprises(fmp, "AAPL"), JSONTable)
end

@testset "analyst_estimates" begin
    @test_throws PermissionError isa(analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4), JSONTable)
end

@testset "mergers_and_acquisitions_feed" begin
    @test_throws PermissionError isa(mergers_and_acquisitions_feed(fmp, page = 0), JSONTable)
end

@testset "mergers_and_acquisitions_search" begin
    @test_throws PermissionError isa(mergers_and_acquisitions_search(fmp, name = "Syros"), JSONTable)
end

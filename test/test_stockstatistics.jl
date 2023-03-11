@testset "social_sentiment" begin
    @test_throws PermissionError historical_social_sentiment(fmp, "AAPL", page = 0)
end

@testset "social_sentiment_trends" begin
    @test_throws PermissionError social_sentiment_trends(fmp)
    @test_throws PermissionError social_sentiment_trends(fmp, type = "bearish", source = "stocktwits")
end

@testset "social_sentiment_changes" begin
    @test_throws PermissionError social_sentiment_changes(fmp)
    @test_throws PermissionError social_sentiment_changes(fmp, type = "bearish", source = "twitter")
end

@testset "stock_grades" begin
    @test_throws PermissionError stock_grades(fmp, "AAPL", limit = 10)
end

@testset "earnings_surprises" begin
    @test_throws PermissionError earnings_surprises(fmp, "AAPL")
end

@testset "analyst_estimates" begin
    @test isa(analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4), JSONTable)
end

@testset "mergers_and_acquisitions_feed" begin
    @test_throws PermissionError mergers_and_acquisitions_feed(fmp, page = 0)
end

@testset "mergers_and_acquisitions_search" begin
    @test_throws PermissionError mergers_and_acquisitions_search(fmp, name = "Syros")
end

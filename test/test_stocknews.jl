@testset "fmp_articles" begin
    @test isa(fmp_articles(fmp, page = 0, size = 5), JSONObject)
end

@testset "stock_news" begin
    @test_throws PermissionError stock_news(fmp, tickers = "AAPL,FB", limit = 50)
end

@testset "stock_news_sentiment_feed" begin
    @test_throws PermissionError stock_news_sentiment_feed(fmp, page = 0)
end

@testset "crypto_news" begin
    @test_throws PermissionError crypto_news(fmp, symbol = "BTCUSD", page = 0)
end

@testset "forex_news" begin
    @test_throws PermissionError forex_news(fmp, symbol = "EURUSD", page = 0)
end

@testset "general_news" begin
    @test_throws PermissionError general_news(fmp, page = 0)
end

@testset "press_releases" begin
    @test_throws PermissionError press_releases(fmp, symbol = "AAPL", page = 0)
end

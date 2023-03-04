@testset "fmp_articles" begin
    @test !isempty(fmp_articles(fmp, page = 0, size = 5)[1])
end

@testset "stock_news" begin
    @test !isempty(stock_news(fmp, ticker = ["GOOG", "MSFT"], limit = 50)[1])
end

@testset "stock_news_sentiment_feed" begin
    @test !isempty(stock_news_sentiment_feed(fmp, page = 0)[1])
end

@testset "crypto_news" begin
    @test !isempty(crypto_news(fmp, symbol = "BTCUSD", page = 0)[1])
end

@testset "crypto_news" begin
    @test !isempty(crypto_news(fmp, symbol = "EURUSD", page = 0)[1])
end

@testset "general_news" begin
    @test !isempty(general_news(fmp, page = 0)[1])
end

@testset "press_releases" begin
    @test !isempty(press_releases(fmp, symbol = "AAPL", page = 0)[1])
end
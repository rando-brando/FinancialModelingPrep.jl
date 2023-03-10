@testset "fmp_articles" begin
    @test isa(fmp_articles(fmp, page = 0, size = 5), JSONTable)
end

@testset "stock_news" begin
    @test isa(stock_news(fmp, ticker = ["GOOG", "MSFT"], limit = 50), JSONTable)
end

@testset "stock_news_sentiment_feed" begin
    @test isa(stock_news_sentiment_feed(fmp, page = 0), JSONTable)
end

@testset "crypto_news" begin
    @test isa(crypto_news(fmp, symbol = "BTCUSD", page = 0), JSONTable)
end

@testset "crypto_news" begin
    @test isa(crypto_news(fmp, symbol = "EURUSD", page = 0), JSONTable)
end

@testset "general_news" begin
    @test isa(general_news(fmp, page = 0), JSONTable)
end

@testset "press_releases" begin
    @test isa(press_releases(fmp, symbol = "AAPL", page = 0), JSONTable)
end
@testset "price_quote" begin
    @test length(price_quote(fmp, "SPY")) > 0
    @test length(price_quote(fmp, ["AAPL", "MSFT"])) > 0
    #test length(price_quote(fmp, "%5EGSPC")) > 0
    #@test length(price_quote(fmp, "EDF.PA")) > 0
    #@test length(price_quote(fmp, "FNV.TO")) > 0
    @test length(price_quote(fmp, "BTCUSD")) > 0
    @test length(price_quote(fmp, "EURUSD")) > 0 
    @test length(price_quote(fmp, ["ZGUSD", "CLUSD", "HGUSD"])) > 0
end

@testset "price_quotes" begin
    #@test length(price_quotes(fmp, "index")) > 0
    #test length(price_quotes(fmp, ""nyse")) > 0
    #@test length(price_quotes(fmp, "euronext")) > 0
    #@test length(price_quotes(fmp, "tsx")) > 0
    #@test length(price_quotes(fmp, "crypto")) > 0
    #@test length(price_quotes(fmp, "forex")) > 0 
    #@test length(price_quotes(fmp, "commodity")) > 0
end

@testset "historical_price_quote" begin
    @test length(historical_price_quote(fmp, "SPY")) > 0
    #test length(historical_price_quote(fmp, "%5EGSPC")) > 0
    #@test length(historical_price_quote(fmp, "EDF.PA")) > 0
    #@test length(historical_price_quote(fmp, "FNV.TO")) > 0
    @test length(historical_price_quote(fmp, "BTCUSD")) > 0
    @test length(historical_price_quote(fmp, "EURUSD")) > 0 
    @test length(historical_price_quote(fmp, "ZGUSD")) > 0
end
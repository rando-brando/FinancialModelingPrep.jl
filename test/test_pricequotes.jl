@testset "price_quote" begin
    @test !isempty(price_quote(fmp, "SPY")[1])
    @test !isempty(price_quote(fmp, "%5EGSPC")[1])
    @test !isempty(price_quote(fmp, "EDF.PA")[1])
    @test !isempty(price_quote(fmp, "FNV.TO")[1])
    @test !isempty(price_quote(fmp, "BTCUSD")[1])
    @test !isempty(price_quote(fmp, "EURUSD")[1])
    @test !isempty(price_quote(fmp, "ZGUSD")[1])
end

@testset "price_quotes" begin
    @test !isempty(price_quotes(fmp, "index")[1])
    @test !isempty(price_quotes(fmp, "nyse")[1])
    @test !isempty(price_quotes(fmp, "euronext")[1])
    @test !isempty(price_quotes(fmp, "tsx")[1])
    @test !isempty(price_quotes(fmp, "crypto")[1])
    @test !isempty(price_quotes(fmp, "forex")[1])
    @test !isempty(price_quotes(fmp, "commodity")[1])
end

@testset "historical_price_quote" begin
    @test !isempty(historical_price_quote(fmp, "SPY")[1])
    @test !isempty(historical_price_quote(fmp, "%5EGSPC", serietype = "line")[1])
    @test !isempty(historical_price_quote(fmp, "EDF.PA", timeseries = 5)[1])
    @test !isempty(historical_price_quote(fmp, "FNV.TO", from = "2018-03-12", to = "2019-03-12")[1])
    @test !isempty(historical_price_quote(fmp, "BTCUSD", frequency = TIME_FREQUENCIES.minutes1)[1])
    @test !isempty(historical_price_quote(fmp, "EURUSD", frequency = TIME_FREQUENCIES.minutes15)[1])
    @test !isempty(historical_price_quote(fmp, "ZGUSD", frequency = TIME_FREQUENCIES.hours1)[1])
end
@testset "price_quote" begin
    @test !isempty(price_quote(fmp, "SPY"))
    @test !isempty(price_quote(fmp, "%5EGSPC"))
    @test !isempty(price_quote(fmp, "EDF.PA"))
    @test !isempty(price_quote(fmp, "FNV.TO"))
    @test !isempty(price_quote(fmp, "BTCUSD"))
    @test !isempty(price_quote(fmp, "EURUSD"))
    @test !isempty(price_quote(fmp, "ZGUSD"))
end

@testset "price_quotes" begin
    @test !isempty(price_quotes(fmp, "index"))
    @test !isempty(price_quotes(fmp, "nyse"))
    @test !isempty(price_quotes(fmp, "euronext"))
    @test !isempty(price_quotes(fmp, "tsx"))
    @test !isempty(price_quotes(fmp, "crypto"))
    @test !isempty(price_quotes(fmp, "forex"))
    @test !isempty(price_quotes(fmp, "commodity"))
end

@testset "historical_price_quote" begin
    @test !isempty(historical_price_quote(fmp, "SPY"))
    @test !isempty(historical_price_quote(fmp, "%5EGSPC", serietype = "line"))
    @test !isempty(historical_price_quote(fmp, "EDF.PA", timeseries = 5))
    @test !isempty(historical_price_quote(fmp, "FNV.TO", from = "2018-03-12", to = "2019-03-12"))
    @test !isempty(historical_price_quote(fmp, "BTCUSD", frequency = TIME_FREQUENCIES.minutes1))
    @test !isempty(historical_price_quote(fmp, "EURUSD", frequency = TIME_FREQUENCIES.minutes15))
    @test !isempty(historical_price_quote(fmp, "ZGUSD", frequency = TIME_FREQUENCIES.hours1))
end
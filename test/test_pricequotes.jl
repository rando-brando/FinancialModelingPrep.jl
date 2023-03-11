@testset "price_quote" begin
    @test isa(price_quote(fmp, "SPY"), JSONTable)
    @test_throws PermissionError price_quote(fmp, "%5EGSPC")
    @test_throws PermissionError price_quote(fmp, "EDF.PA")
    @test_throws PermissionError price_quote(fmp, "FNV.TO")
    @test isa(price_quote(fmp, "BTCUSD"), JSONTable)
    @test isa(price_quote(fmp, "EURUSD"), JSONTable)
    @test isa(price_quote(fmp, "ZGUSD"), JSONTable)
end

@testset "price_quotes" begin
    @test_throws PermissionError price_quotes(fmp, "index")
    @test_throws PermissionError price_quotes(fmp, "nyse")
    @test_throws PermissionError price_quotes(fmp, "euronext")
    @test_throws PermissionError price_quotes(fmp, "tsx")
    @test_throws PermissionError price_quotes(fmp, "crypto")
    @test_throws PermissionError price_quotes(fmp, "forex")
    @test_throws PermissionError price_quotes(fmp, "commodity")
end

@testset "historical_price_quote" begin
    @test isa(historical_price_quote(fmp, "SPY", serietype = "line"), JSONTable)
    @test_throws PermissionError historical_price_quote(fmp, "%5EGSPC")
    @test_throws PermissionError historical_price_quote(fmp, "EDF.PA")
    @test_throws PermissionError historical_price_quote(fmp, "FNV.TO")
    @test isa(historical_price_quote(fmp, "BTCUSD", timeseries = 5), JSONTable)
    @test isa(historical_price_quote(fmp, "EURUSD", from = "2018-03-12", to = "2019-03-12"), JSONTable)
    @test isa(historical_price_quote(fmp, "ZGUSD", frequency = TIME_FREQUENCIES.hours1), JSONTable)
end

@testset "otc_quote" begin
    @test isa(otc_quote(fmp, "GBTC"), JSONTable)
end

@testset "price_change" begin
    @test isa(price_change(fmp, "AAPL"), JSONTable)
end

@testset "historical_splits" begin
    @test isa(historical_splits(fmp, "AAPL"), JSONTable)
end

@testset "survivorship_bias" begin
    @test_throws PermissionError survivorship_bias(fmp, "AAPL", "2012-01-03")
end

@testset "technical_indicators" begin
    @test isa(technical_indicators(fmp, "AAPL"; frequency = TIME_FREQUENCIES.daily, period = 200, type = "sma"), JSONTable)
end

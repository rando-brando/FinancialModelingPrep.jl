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
    @test isa(survivorship_bias(fmp, "AAPL", "2012-01-03"), JSONTable)
end

@testset "technical_indicators" begin
    @test isa(technical_indicators(fmp, "AAPL", TIME_FREQUENCIES.minutes15, period = 10, type = "WMA"), JSONTable)
    @test isa(technical_indicators(fmp::FMP, symbol::String; frequency::String = TIME_FREQUENCIES.daily, period::Integer = 200, type::String = "SMA"), JSONTable)
end
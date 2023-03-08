@testset "otc_quote" begin
    @test !isempty(otc_quote(fmp, "GBTC"))
end

@testset "price_change" begin
    @test !isempty(price_change(fmp, "AAPL"))
end

@testset "historical_splits" begin
    @test !isempty(historical_splits(fmp, "AAPL"))
end

@testset "survivorship_bias" begin
    @test !isempty(survivorship_bias(fmp, "AAPL", "2012-01-03"))
end

@testset "technical_indicators" begin
    @test !isempty(technical_indicators(fmp, "AAPL", TIME_FREQUENCIES.minutes15, period = 10, type = "WMA"))
    @test !isempty(technical_indicators(fmp::FMP, symbol::String; frequency::String = TIME_FREQUENCIES.daily, period::Integer = 200, type::String = "SMA"))
end
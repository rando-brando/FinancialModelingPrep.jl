@testset "available_crytocurrencies" begin
    @test !isempty(available_crytocurrencies(fmp)[1])
end

@testset "available_forex_pairs" begin
    @test !isempty(available_forex_pairs(fmp)[1])
end

@testset "exchange_rates" begin
    @test !isempty(exchange_rates(fmp, "EURUSD")[1])
end

@testset "available_commodities" begin
    @test !isempty(available_commodities(fmp)[1])
end
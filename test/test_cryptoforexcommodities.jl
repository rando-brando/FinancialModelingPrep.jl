@testset "available_crytocurrencies" begin
    @test isa(available_crytocurrencies(fmp), JSONTable)
end

@testset "available_forex_pairs" begin
    @test isa(available_forex_pairs(fmp), JSONTable)
end

@testset "exchange_rates" begin
    @test isa(exchange_rates(fmp, "EURUSD"), JSONTable)
end

@testset "available_commodities" begin
    @test isa(available_commodities(fmp), JSONTable)
end
@testset "search_symbol" begin
    @test isa(search_symbol(fmp, "AA", limit = 10, exchange = "NASDAQ"), JSONTable)
end

@testset "search_name" begin
    @test isa(search_name(fmp, "meta", limit = 10, exchange = "NASDAQ"), JSONTable)
end

@testset "search_symbol" begin
    @test isa(stock_screener(fmp, marketCapMoreThan = 100000000, betaMoreThan = 1, sector = "Technology", exchange = "NASDAQ"), JSONTable)
    @test isa(stock_screener(fmp, country = "CA", priceMoreThan = 100, limit = 100), JSONTable)
end
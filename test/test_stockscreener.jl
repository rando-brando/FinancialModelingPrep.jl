@testset "search_symbol" begin
    @test !isempty(search_symbol(fmp, "AA", limit = 10, exchange = "NASDAQ"))
end

@testset "search_name" begin
    @test !isempty(search_name(fmp, "meta", limit = 10, exchange = "NASDAQ"))
end

@testset "search_symbol" begin
    @test !isempty(stock_screener(fmp, marketCapMoreThan = 100000000, betaMoreThan = 1, sector = "Technology", exchange = "NASDAQ"))
    @test !isempty(stock_screener(fmp, country = "CA", priceMoreThan = 100, limit = 100))
end
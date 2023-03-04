@testset "search_symbol" begin
    @test !isempty(search_symbol(fmp, "AA", limit = 10, exchange = "NASDAQ")[1])
end

@testset "search_name" begin
    @test !isempty(search_name(fmp, "meta", limit = 10, exchange = "NASDAQ")[1])
end

@testset "search_symbol" begin
    @test !isempty(stock_screener(fmp, marketCapMoreThan = 100000000, betaMoreThan = 1, sector = "Technology", exchange = "NASDAQ")[1])
    @test !isempty(stock_screener(fmp, country = "CA", priceMoreThan = 100, limit = 100)[1])
end
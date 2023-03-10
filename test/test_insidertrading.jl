@testset "insider_trading_types" begin
    @test isa(insider_trading_types(fmp), JSONTable)
end

@testset "insider_trades" begin
    @test isa(insider_trades(fmp, transactionType = ["P-Purchase", "S-Sale"], page = 0), JSONTable)
    @test isa(insider_trades(fmp, symbol = "AAPL", page = 0), JSONTable)
end

@testset "insider_trades_feed" begin
    @test isa(insider_trades_feed(fmp, page = 0), JSONTable)
end

@testset "cik_list" begin
    @test isa(cik_list(fmp, page = 3), JSONTable)
end

@testset "cik_from_name" begin
    @test isa(cik_from_name(fmp, name = "zuckerberg%20mark"), JSONTable)
end

@testset "insider_trading_types" begin
    @test isa(insider_trading_types(fmp, "AAPL"), JSONTable)
end

@testset "insider_roster" begin
    @test isa(insider_roster(fmp, "AAPL"), JSONTable)
end

@testset "insider_roster_statistics" begin
    @test isa(insider_roster_statistics(fmp, "AAPL"), JSONTable)
end

@testset "fails_to_deliver" begin
    @test isa(fails_to_deliver(fmp, "AAPL", page = 0), JSONTable)
end

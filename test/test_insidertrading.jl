@testset "insider_trading_types" begin
    @test_throws PermissionError isa(insider_trading_types(fmp), JSONTable)
end

@testset "insider_trades" begin
    @test_throws PermissionError isa(insider_trades(fmp, transactionType = "P-Purchase,S-Sale", page = 0), JSONTable)
    @test_throws PermissionError isa(insider_trades(fmp, symbol = "AAPL", page = 0), JSONTable)
end

@testset "insider_trades_feed" begin
    @test_throws PermissionError isa(insider_trades_feed(fmp, page = 0), JSONTable)
end

@testset "insiders_list" begin
    @test_throws PermissionError isa(insiders_list(fmp, page = 3), JSONTable)
end

@testset "cik_from_insider" begin
    @test_throws PermissionError isa(cik_from_insider(fmp, name = "zuckerberg%20mark"), JSONTable)
end

@testset "cik_from_symbol" begin
    @test_throws PermissionError isa(cik_from_symbol(fmp, "AAPL"), JSONTable)
end

@testset "insider_roster" begin
    @test_throws PermissionError isa(insider_roster(fmp, "AAPL"), JSONTable)
end

@testset "insider_roster_statistics" begin
    @test_throws PermissionError isa(insider_roster_statistics(fmp, "AAPL"), JSONTable)
end

@testset "fails_to_deliver" begin
    @test_throws PermissionError isa(fails_to_deliver(fmp, "AAPL", page = 0), JSONTable)
end

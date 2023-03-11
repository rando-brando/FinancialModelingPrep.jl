@testset "insider_trading_types" begin
    @test_throws PermissionError insider_trading_types(fmp)
end

@testset "insider_trades" begin
    @test_throws PermissionError insider_trades(fmp, transactionType = "P-Purchase,S-Sale", page = 0)
    @test_throws PermissionError insider_trades(fmp, symbol = "AAPL", page = 0)
end

@testset "insider_trades_feed" begin
    @test_throws PermissionError insider_trades_feed(fmp, page = 0)
end

@testset "insiders_list" begin
    @test_throws PermissionError insiders_list(fmp, page = 3)
end

@testset "cik_from_insider" begin
    @test_throws PermissionError cik_from_insider(fmp, name = "zuckerberg%20mark")
end

@testset "cik_from_symbol" begin
    @test_throws PermissionError cik_from_symbol(fmp, "AAPL")
end

@testset "insider_roster" begin
    @test_throws PermissionError insider_roster(fmp, "AAPL")
end

@testset "insider_roster_statistics" begin
    @test_throws PermissionError insider_roster_statistics(fmp, "AAPL")
end

@testset "fails_to_deliver" begin
    @test_throws PermissionError fails_to_deliver(fmp, "AAPL", page = 0)
end

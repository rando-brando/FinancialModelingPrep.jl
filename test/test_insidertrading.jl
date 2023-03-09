@testset "insider_trading_types" begin
    @test !isempty(insider_trading_types(fmp))
end

@testset "insider_trades" begin
    @test !isempty(insider_trades(fmp, transactionType = ["P-Purchase", "S-Sale"], page = 0))
    @test !isempty(insider_trades(fmp, symbol = "AAPL", page = 0))
end

@testset "insider_trades_feed" begin
    @test !isempty(insider_trades_feed(fmp, page = 0))
end

@testset "cik_list" begin
    @test !isempty(cik_list(fmp, page = 3))
end

@testset "cik_from_name" begin
    @test !isempty(cik_from_name(fmp, name = "zuckerberg%20mark"))
end

@testset "insider_trading_types" begin
    @test !isempty(insider_trading_types(fmp, "AAPL"))
end

@testset "insider_roster" begin
    @test !isempty(insider_roster(fmp, "AAPL"))
end

@testset "insider_roster_statistics" begin
    @test !isempty(insider_roster_statistics(fmp, "AAPL"))
end

@testset "fails_to_deliver" begin
    @test !isempty(fails_to_deliver(fmp, "AAPL", page = 0))
end
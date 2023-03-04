@testset "senate_trades" begin
    @test !isempty(senate_trades(fmp, "AAPL")[1])
end

@testset "senate_trades_feed" begin
    @test !isempty(senate_trades_feed(fmp, page = 0)[1])
end

@testset "senate_disclosures" begin
    @test !isempty(senate_disclosures(fmp, "AAPL")[1])
end

@testset "senate_disclosure_feed" begin
    @test !isempty(senate_disclosure_feed(fmp, page = 0)[1])
end
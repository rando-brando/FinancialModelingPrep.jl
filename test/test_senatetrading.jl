@testset "senate_trades" begin
    @test isa(senate_trades(fmp, "AAPL"), JSONTable)
end

@testset "senate_trades_feed" begin
    @test isa(senate_trades_feed(fmp, page = 0), JSONTable)
end

@testset "senate_disclosures" begin
    @test isa(senate_disclosures(fmp, "AAPL"), JSONTable)
end

@testset "senate_disclosure_feed" begin
    @test isa(senate_disclosure_feed(fmp, page = 0), JSONTable)
end
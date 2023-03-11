@testset "senate_trades" begin
    @test_throws PermissionError senate_trades(fmp, "AAPL")
end

@testset "senate_trades_feed" begin
    @test_throws PermissionError senate_trades_feed(fmp, page = 0)
end

@testset "senate_disclosures" begin
    @test_throws PermissionError senate_disclosures(fmp, "AAPL")
end

@testset "senate_disclosure_feed" begin
    @test_throws PermissionError senate_disclosure_feed(fmp, page = 0)
end

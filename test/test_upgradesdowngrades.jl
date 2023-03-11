@testset "upgrades_and_downgrades" begin
    @test_throws PermissionError upgrades_and_downgrades(fmp, "AAPL")
end

@testset "upgrades_and_downgrades_feed" begin
    @test_throws PermissionError upgrades_and_downgrades_feed(fmp, page = 0)
end

@testset "upgrades_and_downgrades_consensus" begin
    @test_throws PermissionError upgrades_and_downgrades_consensus(fmp, "AAPL")
end

@testset "upgrades_and_downgrades_by_company" begin
    @test_throws PermissionError upgrades_and_downgrades_by_company(fmp, company = "Barclays")
end

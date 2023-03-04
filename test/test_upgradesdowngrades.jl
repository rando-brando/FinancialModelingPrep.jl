@testset "upgrades_and_downgrades" begin
    @test !isempty(upgrades_and_downgrades(fmp, "AAPL"))
end

@testset "upgrades_and_downgrades_feed" begin
    @test !isempty(upgrades_and_downgrades_feed(fmp, page = 0))
end

@testset "upgrades_and_downgrades_consensus" begin
    @test !isempty(upgrades_and_downgrades_consensus(fmp, "AAPL"))
end

@testset "upgrades_and_downgrades_by_company" begin
    @test !isempty(upgrades_and_downgrades_by_company(fmp, "Barclays"))
end
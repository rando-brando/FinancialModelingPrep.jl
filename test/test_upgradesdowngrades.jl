@testset "upgrades_and_downgrades" begin
    @test isa(upgrades_and_downgrades(fmp, "AAPL"), JSONTable)
end

@testset "upgrades_and_downgrades_feed" begin
    @test isa(upgrades_and_downgrades_feed(fmp, page = 0), JSONTable)
end

@testset "upgrades_and_downgrades_consensus" begin
    @test isa(upgrades_and_downgrades_consensus(fmp, "AAPL"), JSONTable)
end

@testset "upgrades_and_downgrades_by_company" begin
    @test isa(upgrades_and_downgrades_by_company(fmp, "Barclays"), JSONTable)
end
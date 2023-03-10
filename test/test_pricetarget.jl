@testset "price_targets" begin
    @test isa(price_targets(fmp, "AAPL"), JSONTable)
end

@testset "price_targets_by_analyst" begin
    @test isa(price_targets_by_analyst(fmp, "Tim%20Anderson"), JSONTable)
end

@testset "price_targets_by_company" begin
    @test isa(price_targets_by_company(fmp, "Barclays"), JSONTable)
end

@testset "price_targets_summary" begin
    @test isa(price_targets_summary(fmp, "AAPL"), JSONTable)
end

@testset "price_targets_consensus" begin
    @test isa(price_targets_consensus(fmp, "AAPL"), JSONTable)
end

@testset "price_targets_feed" begin
    @test isa(price_targets_feed(fmp, page = 0), JSONTable)
end
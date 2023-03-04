@testset "price_targets" begin
    @test !isempty(price_targets(fmp, "AAPL"))
end

@testset "price_targets_by_analyst" begin
    @test !isempty(price_targets_by_analyst(fmp, "Tim%20Anderson"))
end

@testset "price_targets_by_company" begin
    @test !isempty(price_targets_by_company(fmp, "Barclays"))
end

@testset "price_targets_summary" begin
    @test !isempty(price_targets_summary(fmp, "AAPL"))
end

@testset "price_targets_consensus" begin
    @test !isempty(price_targets_consensus(fmp, "AAPL"))
end

@testset "price_targets_feed" begin
    @test !isempty(price_targets_feed(fmp, page = 0))
end
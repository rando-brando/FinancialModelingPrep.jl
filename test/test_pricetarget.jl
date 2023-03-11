@testset "price_targets" begin
    @test_throws PermissionError price_targets(fmp, "AAPL")
end

@testset "price_targets_by_analyst" begin
    @test_throws PermissionError price_targets_by_analyst(fmp, name = "Tim%20Anderson")
end

@testset "price_targets_by_company" begin
    @test_throws PermissionError price_targets_by_company(fmp, company = "Barclays")
end

@testset "price_targets_summary" begin
    @test_throws PermissionError price_targets_summary(fmp, "AAPL")
end

@testset "price_targets_consensus" begin
    @test_throws PermissionError price_targets_consensus(fmp, "AAPL")
end

@testset "price_targets_feed" begin
    @test_throws PermissionError price_targets_feed(fmp, page = 0)
end

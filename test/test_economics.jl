@testset "market_risk_premiums" begin
    @test_throws PermissionError market_risk_premiums(fmp)
end

@testset "market_risk_premiums" begin
    @test_throws PermissionError treasury_rates(fmp, from = "2022-01-01", to = "2022-03-31")
end

@testset "market_risk_premiums" begin
    @test_throws PermissionError economic_indicator(fmp, name = "realGDP", from = "2022-01-01", to = "2022-03-31")
    @test_throws PermissionError economic_indicator(fmp, name = "federalFunds", from = "2022-01-01", to = "2022-03-31")
end

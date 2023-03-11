@testset "market_risk_premiums" begin
    @test_throws PermissionError isa(market_risk_premiums(fmp), JSONTable)
end

@testset "market_risk_premiums" begin
    @test_throws PermissionError isa(treasury_rates(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "market_risk_premiums" begin
    @test_throws PermissionError isa(economic_indicator(fmp, name = "realGDP", from = "2022-01-01", to = "2022-03-31"), JSONTable)
    @test_throws PermissionError isa(economic_indicator(fmp, name = "federalFunds", from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

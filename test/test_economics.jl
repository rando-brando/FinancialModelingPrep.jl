@testset "market_risk_premiums" begin
    @test isa(market_risk_premiums(fmp), JSONTable)
end

@testset "market_risk_premiums" begin
    @test isa(treasury_rates(fmp, from = "2022-01-01", to = "2022-03-31"), JSONTable)
end

@testset "market_risk_premiums" begin
    @test isa(economic_indicator(fmp, name = "realGDP", from = "2022-01-01", to = "2022-03-31"), JSONTable)
    @test isa(economic_indicator(fmp, name = "federalFunds", from = "2022-01-01", to = "2022-03-31"), JSONTable)
end
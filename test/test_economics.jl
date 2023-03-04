@testset "market_risk_premiums" begin
    @test !isempty(market_risk_premiums(fmp)[1])
end

@testset "market_risk_premiums" begin
    @test !isempty(treasury_rates(fmp, from = "2022-01-01", to = "2022-03-31")[1])
end

@testset "market_risk_premiums" begin
    @test !isempty(economic_indicator(fmp, name = "realGDP", from = "2022-01-01", to = "2022-03-31")[1])
    @test !isempty(economic_indicator(fmp, name = "federalFunds", from = "2022-01-01", to = "2022-03-31")[1])
end
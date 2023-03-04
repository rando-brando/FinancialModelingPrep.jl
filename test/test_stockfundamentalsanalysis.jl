@testset "financial_ratios" begin
    @test !isempty(financial_ratios(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(financial_ratios(fmp, "AAPL", limit = 5)[1])
end

@testset "financial_scores" begin
    @test !isempty(financial_scores(fmp, "AAPL")[1])
end

@testset "owners_earnings" begin
    @test !isempty(owners_earnings(fmp, "AAPL")[1])
end

@testset "enterprise_values" begin
    @test !isempty(enterprise_values(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(enterprise_values(fmp, "AAPL", limit = 5)[1])
end

@testset "income_statements_growth" begin
    @test !isempty(income_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(income_statements_growth(fmp, "AAPL", limit = 5)[1])
end

@testset "balance_sheet_statements_growth" begin
    @test !isempty(balance_sheet_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(balance_sheet_statements_growth(fmp, "AAPL", limit = 5)[1])
end

@testset "cash_flow_statements_growth" begin
    @test !isempty(cash_flow_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(cash_flow_statements_growth(fmp, "AAPL", limit = 5)[1])
end

@testset "financial_statements_growth" begin
    @test !isempty(financial_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(financial_statements_growth(fmp, "AAPL", limit = 5)[1])
end

@testset "key_metrics" begin
    @test !isempty(key_metrics(fmp, "AAPL", period = REPORTING_PERIODS.ttm, limit = 30)[1])
    @test !isempty(key_metrics(fmp, "AAPL", limit = 5)[1])
end

@testset "company_rating" begin
    @test !isempty(company_rating(fmp, "AAPL")[1])
end

@testset "historical_ratings" begin
    @test !isempty(historical_ratings(fmp, "AAPL", limit = 5)[1])
end

@testset "discounted_cash_flows" begin
    @test !isempty(discounted_cash_flows(fmp, "AAPL")[1])
    @test !isempty(discounted_cash_flows(fmp, "AAPL", with_wacc = true)[1])
end

@testset "historical_discounted_cash_flows" begin
    @test !isempty(historical_discounted_cash_flows(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)[1])
    @test !isempty(historical_discounted_cash_flows(fmp, "AAPL", limit = 5)[1])
end

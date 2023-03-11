@testset "financial_ratios" begin
    @test isa(financial_ratios(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(financial_ratios(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "financial_scores" begin
    @test_throws PermissionError financial_scores(fmp, "AAPL")
end

@testset "owners_earnings" begin
    @test_throws PermissionError owners_earnings(fmp, "AAPL")
end

@testset "enterprise_values" begin
    @test isa(enterprise_values(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(enterprise_values(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "income_statements_growth" begin
    @test isa(income_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(income_statements_growth(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "balance_sheet_statements_growth" begin
    @test isa(balance_sheet_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(balance_sheet_statements_growth(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "cash_flow_statements_growth" begin
    @test isa(cash_flow_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(cash_flow_statements_growth(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "financial_statements_growth" begin
    @test isa(financial_statements_growth(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30), JSONTable)
    @test isa(financial_statements_growth(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "key_metrics" begin
    @test isa(key_metrics(fmp, "AAPL", period = REPORTING_PERIODS.ttm, limit = 30), JSONTable)
    @test isa(key_metrics(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "company_rating" begin
    @test isa(company_rating(fmp, "AAPL"), JSONTable)
end

@testset "historical_ratings" begin
    @test isa(historical_ratings(fmp, "AAPL", limit = 5), JSONTable)
end

@testset "discounted_cash_flows" begin
    @test_throws PermissionError discounted_cash_flows(fmp, "AAPL")
end

@testset "advanced_discounted_cash_flows" begin
    @test isa(advanced_discounted_cash_flows(fmp, "AAPL"), JSONTable)
    @test isa(advanced_discounted_cash_flows(fmp, "AAPL", levered = true), JSONTable)
end

@testset "historical_discounted_cash_flows" begin
    @test_throws PermissionError historical_discounted_cash_flows(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 30)
    @test_throws PermissionError historical_discounted_cash_flows(fmp, "AAPL", limit = 5)
end

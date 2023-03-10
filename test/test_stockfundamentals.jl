@testset "symbols_with_financials" begin
    @test isa(symbols_with_financials(fmp), JSONArray)
end

@testset "income_statements" begin
    @test_throws PermissionError isa(income_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test isa(income_statements(fmp, "AAPL", reported = true, limit = 5), JSONTable)
end

@testset "balance_sheet_statements" begin
    @test_throws PermissionError isa(balance_sheet_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test isa(balance_sheet_statements(fmp, "AAPL", reported = true, limit = 5), JSONTable)
end

@testset "cash_flow_statements" begin
    @test_throws PermissionError isa(cash_flow_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test isa(cash_flow_statements(fmp, "AAPL", reported = true, limit = 5), JSONTable)
end

@testset "financial_statements" begin
    @test isa(financial_statements(fmp, "AAPL", limit = 5), JSONTable)
    @test_throws PermissionError isa(financial_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 4), JSONTable)
end

@testset "financial_reports" begin
    @test_throws PermissionError isa(financial_reports(fmp, "AAPL", 2022), JSONTable)
    @test_throws PermissionError isa(financial_reports(fmp, "AAPL", 2022, period = "Q4"), JSONTable)
end

@testset "revenue_segments" begin
    @test_throws PermissionError isa(revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.geographic), JSONTable)
    @test_throws PermissionError isa(revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.product, period = REPORTING_PERIODS.quarter), JSONTable)
end

@testset "shares_float" begin
    @test_throws PermissionError isa(shares_float(fmp, "AAPL"), JSONTable)
end

@testset "earnings_call_transcripts" begin
    @test_throws PermissionError isa(earnings_call_transcripts(fmp, "AAPL"), JSONTable)
    @test_throws PermissionError isa(earnings_call_transcripts(fmp, "AAPL", 2022), JSONTable)
    @test_throws PermissionError isa(earnings_call_transcripts(fmp, "AAPL", 2022, 3), JSONTable)
end

@testset "sec_filings" begin
    @test isa(sec_filings(fmp, "AAPL", type = "10-K", page = 0), JSONTable)
end

@testset "company_notes" begin
    @test_throws PermissionError isa(company_notes(fmp, "AAPL"), JSONTable)
end

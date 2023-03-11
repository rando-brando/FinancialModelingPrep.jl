@testset "symbols_with_financials" begin
    @test isa(symbols_with_financials(fmp), JSONArray)
end

@testset "income_statements" begin
    @test isa(income_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test_throws PermissionError income_statements(fmp, "AAPL", reported = true, limit = 5)
end

@testset "balance_sheet_statements" begin
    @test isa(balance_sheet_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test_throws PermissionError balance_sheet_statements(fmp, "AAPL", reported = true, limit = 5)
end

@testset "cash_flow_statements" begin
    @test isa(cash_flow_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10), JSONTable)
    @test_throws PermissionError cash_flow_statements(fmp, "AAPL", reported = true, limit = 5)
end

@testset "financial_statements" begin
    @test_throws PermissionError financial_statements(fmp, "AAPL", limit = 5)
    @test_throws PermissionError financial_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 4)
end

@testset "financial_reports" begin
    @test_throws PermissionError financial_reports(fmp, "AAPL", 2022)
    @test_throws PermissionError financial_reports(fmp, "AAPL", 2022, period = "Q4")
end

@testset "revenue_segments" begin
    @test_throws PermissionError revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.geographic)
    @test_throws PermissionError revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.product, period = REPORTING_PERIODS.quarter)
end

@testset "shares_float" begin
    @test_throws PermissionError shares_float(fmp)
    @test_throws PermissionError shares_float(fmp, "AAPL")
end

@testset "earnings_call_transcripts" begin
    @test isa(earnings_call_transcripts(fmp, "AAPL"), JSONArray)
    @test isa(earnings_call_transcripts(fmp, "AAPL", year = 2022), JSONArray)
    @test isa(earnings_call_transcripts(fmp, "AAPL", year = 2022, quarter = 3), JSONArray)
end

@testset "sec_filings" begin
    @test isa(sec_filings(fmp, "AAPL", type = "10-K", page = 0), JSONTable)
end

@testset "company_notes" begin
    @test isa(company_notes(fmp, "AAPL"), JSONTable)
end

@testset "symbols_with_financials" begin
    @test !isempty(symbols_with_financials(fmp))
end

@testset "income_statements" begin
    @test !isempty(income_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10))
    @test !isempty(income_statements(fmp, "AAPL", reported = true, limit = 5))
end

@testset "balance_sheet_statements" begin
    @test !isempty(balance_sheet_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10))
    @test !isempty(balance_sheet_statements(fmp, "AAPL", reported = true, limit = 5))
end

@testset "cash_flow_statements" begin
    @test !isempty(cash_flow_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 10))
    @test !isempty(cash_flow_statements(fmp, "AAPL", reported = true, limit = 5))
end

@testset "financial_statements" begin
    @test !isempty(financial_statements(fmp, "AAPL", limit = 5))
    @test !isempty(financial_statements(fmp, "AAPL", period = REPORTING_PERIODS.quarter, limit = 4))
end

@testset "financial_reports" begin
    @test !isempty(financial_reports(fmp, "AAPL", 2022))
    @test !isempty(financial_reports(fmp, "AAPL", 2022, period = "Q4"))
end

@testset "revenue_segments" begin
    @test !isempty(revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.geographic))
    @test !isempty(revenue_segments(fmp, "AAPL", segment = REVENUE_SEGMENTS.product, period = REPORTING_PERIODS.quarter))
end

@testset "shares_float" begin
    @test !isempty(shares_float(fmp, "AAPL"))
end

@testset "earnings_call_transcripts" begin
    @test !isempty(earnings_call_transcript(fmp, "AAPL", year = 2022, quarter = 3))
end

@testset "sec_filings" begin
    @test !isempty(sec_filings(fmp, "AAPL", type = "10-K", page = 2))
end

@testset "company_notes" begin
    @test !isempty(company_notes(fmp, "AAPL"))
end
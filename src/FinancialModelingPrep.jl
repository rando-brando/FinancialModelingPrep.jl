module FinancialModelingPrep

include("Client.jl")

import .Client
import .Client.FMP

export FMP_ENDPOINTS

# exports from Client module in Client.jl
export FMP

# exports from stockfundamentals.jl
export
    symbols_with_financials,
    income_statements,
    balance_sheet_statements,
    cash_flow_statements,
    financial_statements,
    financial_reports,
    shares_float,
    earnings_call_transcripts,
    sec_filings

# exports from stockfundamentalsanalysis.jl
export
    financial_ratios,
    financial_scores,
    owners_earnings,
    enterprise_values,
    income_statements_growth,
    balance_sheet_statements_growth,
    cash_flow_statements_growth,
    financial_statements_growth,
    key_metrics,
    current_rating,
    historical_ratings,
    discounted_cash_flows,
    historical_discounted_cash_flows

# exports from stockstatistics.jl
export
    earnings_surprises,
    analyst_estimates

# exports from companyinformation.jl
export
    company_profile

# exports from stockfundamentalsanalysis.jl

REPORTING_PERIODS = (annual = "annual", quarter = "quarter", ttm = "ttm") # reporting period options
REVENUE_SEGMENTS = (geographic = "geographic", product = "product") # revenue segment options

include("stockfundamentals.jl")
include("stockfundamentalsanalysis.jl")
include("stockstatistics.jl")
include("companyinformation.jl")

end # module FinancialModelingPrep